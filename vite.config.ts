import { sveltekit } from '@sveltejs/kit/vite';
import { defineConfig } from 'vite';

export default defineConfig({
	plugins: [sveltekit()],
	server: {
		// allowedHosts: ['4ee7-182-4-103-154.ngrok-free.app'] // Development
	}
});
