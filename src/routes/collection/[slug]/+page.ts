import { content } from '$lib/content';
import { error } from '@sveltejs/kit';
import type { PageLoad } from './$types';

export const prerender = true;

interface PageData {
    pack: (typeof content.packs3d)[number];
    title: string;
}

export const load = (async ({ params }): Promise<PageData> => {
    if (!params.slug) {
        throw error(404, 'Pack slug is required');
    }

    const pack = content.packs3d.find(pack => 
        pack.url.split('/').pop()?.toLowerCase() === params.slug.toLowerCase()
    );
    
    if (!pack) {
        throw error(404, `Pack "${params.slug}" not found`);
    }

    return {
        pack,
        title: pack.name
    };
}) satisfies PageLoad;
