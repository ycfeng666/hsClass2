import { createRouter, createWebHashHistory } from 'vue-router';
import ShopView from '@/views/ShopView.vue';
import sartView from '@/views/SartView.vue';

const routes = [
	{
		path: '/',
		name: 'shop',
		component: ShopView,
	},
	{
		path: '/sart',
		name: 'sart',
		component: sartView,
	},
];

const router = createRouter({
	history: createWebHashHistory(),
	routes,
});

export default router;
