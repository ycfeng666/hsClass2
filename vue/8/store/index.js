import { defineStore } from 'pinia';

export const shopStore = defineStore('shop', {
	state: () => {
		return {
			// 商城数据
			shopData: [
				{
					id: 1,
					title: '三体合集',
					price: 45.0,
					src: '/static/img/santi.jpg',
					num: 1,
				},
				{
					id: 2,
					title: '法治的细节',
					price: 21.0,
					src: '/static/img/fazhi.jpg',
					num: 1,
				},
				{
					id: 3,
					title: '资本论',
					price: 33.0,
					src: '/static/img/zibenlun.jpg',
					num: 1,
				},
			],
			// 购物车数据
			sartData: [],
		};
	},
	actions: {
		// 加入购物车数据
		joinSartData(id) {
			const self = this,
				data = self.filterShopDataById(id),
				bookI = self.getSartDataIndexById(id);
			if (bookI >= 0) self.sartData[bookI].num++;
			else self.sartData.push(data[0]);
		},
		// 调整购物车数据
		adjustSartData(id) {
			const self = this;
			const bookI = self.getSartDataIndexById(id);
			if (self.sartData[bookI].num === 0) self.sartData.splice(bookI, 1);
		},
	},
	getters: {
		// 根据ID排除筛选商城数据
		filterShopDataById(store) {
			return (id) => {
				const tempData = JSON.parse(JSON.stringify(store.shopData));
				return tempData.filter((item) => item.id === id);
			};
		},
		// 根据ID查找索引
		getSartDataIndexById(store) {
			return (id) => {
				const tempData = JSON.parse(JSON.stringify(store.sartData));
				return tempData.findIndex((item) => item.id === id);
			};
		},
	},
});
