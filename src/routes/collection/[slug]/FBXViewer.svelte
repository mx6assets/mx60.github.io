<script lang="ts">
    import { onMount, onDestroy, createEventDispatcher } from 'svelte';
    import * as THREE from 'three';
    import { FBXLoader } from 'three/examples/jsm/loaders/FBXLoader.js';
    import { OrbitControls } from 'three/examples/jsm/controls/OrbitControls.js';
    import { Sun, Moon, ZoomIn, ZoomOut, RotateCcw, RotateCw, RefreshCw } from 'lucide-svelte';

    export let modelUrl: string;
    const dispatch = createEventDispatcher();

    let container: HTMLDivElement;
    let loading = true;
    let error: string | null = null;
    
    // Track resources for cleanup
    let renderer: THREE.WebGLRenderer | null = null;
    let scene: THREE.Scene | null = null;
    let camera: THREE.PerspectiveCamera | null = null;
    let controls: OrbitControls | null = null;
    let animationFrameId: number | null = null;
    let isDarkMode = true; // Add this near other state variables

    function animate() {
        if (!renderer || !scene || !camera || !controls) return;
        animationFrameId = requestAnimationFrame(animate);
        controls.update();
        try {
            renderer.render(scene, camera);
        } catch (e) {
            console.error('Render error:', e);
            if (animationFrameId) {
                cancelAnimationFrame(animationFrameId);
            }
        }
    }

    function cleanup() {
        if (animationFrameId) {
            cancelAnimationFrame(animationFrameId);
        }

        if (controls) {
            controls.dispose();
        }

        if (renderer) {
            renderer.dispose();
            renderer.forceContextLoss();
            renderer.domElement.remove();
            renderer = null;
        }

        if (scene) {
            scene.clear();
            scene = null;
        }

        camera = null;
        controls = null;
    }

    function resetCamera() {
        if (!camera || !controls) return;
        camera.position.set(2, 2, 3); // Closer camera position
        controls.target.set(0, 0, 0);
        controls.update();
    }

    function zoomIn() {
        if (!camera || !controls) return;
        camera.position.multiplyScalar(0.9);
        controls.update();
    }

    function zoomOut() {
        if (!camera || !controls) return;
        camera.position.multiplyScalar(1.1);
        controls.update();
    }

    function rotateLeft() {
        if (!camera || !controls) return;
        camera.position.applyAxisAngle(new THREE.Vector3(0, 1, 0), 0.1);
        controls.update();
    }

    function rotateRight() {
        if (!camera || !controls) return;
        camera.position.applyAxisAngle(new THREE.Vector3(0, 1, 0), -0.1);
        controls.update();
    }

    function toggleTheme() {
        if (!scene) return;
        isDarkMode = !isDarkMode;
        
        // Update scene background
        scene.background = new THREE.Color(isDarkMode ? 0x1a1a1a : 0xffffff);
        
        // Find and update grid helper
        const sceneRef = scene; // Create a reference to satisfy TypeScript
        sceneRef.children.forEach(child => {
            if (child instanceof THREE.GridHelper) {
                sceneRef.remove(child);
                const newGridHelper = new THREE.GridHelper(
                    8,
                    8,
                    isDarkMode ? 0x666666 : 0x999999,
                    isDarkMode ? 0x333333 : 0xcccccc
                );
                newGridHelper.position.y = 0;
                sceneRef.add(newGridHelper);
            }
            if (child instanceof THREE.Mesh && child.geometry instanceof THREE.PlaneGeometry) {
                // Update ground plane
                child.material.color = new THREE.Color(isDarkMode ? 0x222222 : 0xeeeeee);
            }
        });
    }

    onMount(() => {
        try {
            scene = new THREE.Scene();
            camera = new THREE.PerspectiveCamera(75, container.clientWidth / container.clientHeight, 0.1, 1000);
            
            renderer = new THREE.WebGLRenderer({ 
                antialias: true,
                alpha: true,
                powerPreference: 'high-performance'
            });

            if (!renderer.getContext()) {
                throw new Error('WebGL not supported');
            }

            renderer.setSize(container.clientWidth, container.clientHeight);
            renderer.setPixelRatio(window.devicePixelRatio);
            container.appendChild(renderer.domElement);

            // Wider grid helper
            const size = 8; // Wider grid size
            const divisions = 8; // Matching divisions
            const gridHelper = new THREE.GridHelper(
                size,
                divisions,
                0x666666, // Main grid lines
                0x333333  // Secondary grid lines
            );
            gridHelper.position.y = 0; // At ground level
            scene.add(gridHelper);

            // Update ground plane to match wider grid
            const groundGeometry = new THREE.PlaneGeometry(size, size);
            const groundMaterial = new THREE.MeshPhongMaterial({
                color: 0x222222,
                transparent: true,
                opacity: 0.3,
                shininess: 0
            });
            const groundPlane = new THREE.Mesh(groundGeometry, groundMaterial);
            groundPlane.rotation.x = -Math.PI / 2;
            groundPlane.position.y = -0.01; // Slightly below grid
            groundPlane.receiveShadow = true;
            scene.add(groundPlane);

            // Improved lighting setup
            const ambientLight = new THREE.AmbientLight(0xffffff, 0.4);
            scene.add(ambientLight);

            const hemisphereLight = new THREE.HemisphereLight(0xffffff, 0x444444, 0.6);
            hemisphereLight.position.set(0, 20, 0);
            scene.add(hemisphereLight);

            // Main directional light with shadows
            const directionalLight = new THREE.DirectionalLight(0xffffff, 0.8);
            directionalLight.position.set(5, 8, 5);
            directionalLight.castShadow = true;
            directionalLight.shadow.mapSize.width = 2048;
            directionalLight.shadow.mapSize.height = 2048;
            directionalLight.shadow.camera.near = 0.5;
            directionalLight.shadow.camera.far = 50;
            directionalLight.shadow.camera.left = -10;
            directionalLight.shadow.camera.right = 10;
            directionalLight.shadow.camera.top = 10;
            directionalLight.shadow.camera.bottom = -10;
            directionalLight.shadow.bias = -0.0001;
            scene.add(directionalLight);

            // Fill light
            const fillLight = new THREE.DirectionalLight(0xffffff, 0.3);
            fillLight.position.set(-5, 3, -5);
            scene.add(fillLight);

            // Enable shadow mapping on renderer
            renderer.shadowMap.enabled = true;
            renderer.shadowMap.type = THREE.PCFSoftShadowMap;

            controls = new OrbitControls(camera, renderer.domElement);
            controls.enableDamping = true;
            controls.dampingFactor = 0.05;
            
            camera.position.set(2, 2, 3); // Closer initial camera position
            controls.update();

            // Update background color
            scene.background = new THREE.Color(0x1a1a1a); // Initial dark mode color

            const loader = new FBXLoader();
            
            loader.load(
                modelUrl,
                (fbx) => {
                    if (!scene) return;
                    fbx.traverse((child) => {
                        if (child instanceof THREE.Mesh) {
                            child.castShadow = true;
                            child.receiveShadow = true;
                            // Improve material quality
                            if (child.material) {
                                child.material.side = THREE.DoubleSide;
                                child.material.needsUpdate = true;
                            }
                        }
                    });
                    scene.add(fbx);
                    
                    // Improved model positioning and scaling
                    const box = new THREE.Box3().setFromObject(fbx);
                    const center = box.getCenter(new THREE.Vector3());
                    const size = box.getSize(new THREE.Vector3());
                    
                    // Center horizontally
                    fbx.position.x = -center.x;
                    fbx.position.z = -center.z;
                    
                    // Calculate scale to fit model within grid
                    const maxDim = Math.max(size.x, size.y, size.z);
                    const targetSize = 2; // Target size in grid units (smaller than before)
                    const scale = targetSize / maxDim;
                    fbx.scale.setScalar(scale);
                    
                    // Adjust Y position after scaling
                    const scaledBox = new THREE.Box3().setFromObject(fbx);
                    const scaledSize = scaledBox.getSize(new THREE.Vector3());
                    fbx.position.y = 0; // Place at ground level
                    
                    loading = false;
                    animate();
                },
                (xhr) => {
                    console.log((xhr.loaded / xhr.total * 100) + '% loaded');
                },
                (error) => {
                    console.error('Error loading model:', error);
                    loading = false;
                    error = 'Failed to load model';
                }
            );

            // Click handler
            const raycaster = new THREE.Raycaster();
            const mouse = new THREE.Vector2();

            renderer.domElement.addEventListener('click', (event) => {
                if (!renderer || !camera || !scene) return;
                const rect = renderer.domElement.getBoundingClientRect();
                mouse.x = ((event.clientX - rect.left) / rect.width) * 2 - 1;
                mouse.y = -((event.clientY - rect.top) / rect.height) * 2 + 1;

                raycaster.setFromCamera(mouse, camera);
                const intersects = raycaster.intersectObjects(scene.children, true);

                if (intersects.length > 0) {
                    dispatch('modelClick');
                }
            });

            // Add window resize handler
            const handleResize = () => {
                if (!camera || !renderer) return;
                const width = container.clientWidth;
                const height = container.clientHeight;
                
                camera.aspect = width / height;
                camera.updateProjectionMatrix();
                renderer.setSize(width, height);
            };

            window.addEventListener('resize', handleResize);

            return () => {
                window.removeEventListener('resize', handleResize);
                cleanup();
            };
        } catch (e) {
            console.error('Setup error:', e);
            error = 'Failed to initialize 3D viewer';
            cleanup();
        }
    });

    onDestroy(() => {
        cleanup();
    });
</script>

<div class="relative w-full h-[400px]">
    <div bind:this={container} class="w-full h-full rounded-xl overflow-hidden bg-[#1a1a1a]"></div>
    
    
    <div class="absolute bottom-4 right-4 flex gap-2">
        <button
            class="p-2 bg-black/50 hover:bg-black/70 text-white rounded-full"
            on:click={toggleTheme}
            title={isDarkMode ? "Light Mode" : "Dark Mode"}
        >
            {#if isDarkMode}
                <Sun class="h-5 w-5" />
            {:else}
                <Moon class="h-5 w-5" />
            {/if}
        </button>
        <button
            class="p-2 bg-black/50 hover:bg-black/70 text-white rounded-full"
            on:click={zoomIn}
            title="Zoom In"
        >
            <ZoomIn class="h-5 w-5" />
        </button>
        <button
            class="p-2 bg-black/50 hover:bg-black/70 text-white rounded-full"
            on:click={zoomOut}
            title="Zoom Out"
        >
            <ZoomOut class="h-5 w-5" />
        </button>
        <button
            class="p-2 bg-black/50 hover:bg-black/70 text-white rounded-full"
            on:click={rotateLeft}
            title="Rotate Left"
        >
            <RotateCcw class="h-5 w-5" />
        </button>
        <button
            class="p-2 bg-black/50 hover:bg-black/70 text-white rounded-full"
            on:click={rotateRight}
            title="Rotate Right"
        >
            <RotateCw class="h-5 w-5" />
        </button>
        <button
            class="p-2 bg-black/50 hover:bg-black/70 text-white rounded-full"
            on:click={resetCamera}
            title="Reset View"
        >
            <RefreshCw class="h-5 w-5" />
        </button>
    </div>

    {#if loading}
        <div class="absolute inset-0 flex items-center justify-center bg-muted/50">
            <div class="text-sm text-muted-foreground">Loading model...</div>
        </div>
    {/if}
    {#if error}
        <div class="absolute inset-0 flex items-center justify-center bg-muted/50">
            <div class="text-sm text-destructive">{error}</div>
        </div>
    {/if}
</div>
