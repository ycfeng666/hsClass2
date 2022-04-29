<template>
	<div class="box">
		<a-row :gutter="16">
			<a-col :span="12">
				<h2>商城</h2>
				<p>
					<a-input-search
						v-model:value="searchData"
						placeholder="搜索"
						enter-button="Search"
						@search="searchShopData"
					/>
				</p>
				<a-list item-layout="horizontal" :data-source="shopData">
					<template #renderItem="{ item }">
						<a-list-item>
							<a-list-item-meta>
								<template #title>
									<a href="">{{ item.title }}</a>
								</template>
								<template #avatar>
									<a-image :src="item.src" :width="100"></a-image>
								</template>
								<template #description>
									<p>￥ {{ item.price }}</p>
									<p>
										<a-button type="primary" @click="joinSart(item.id)"
											>加入购物车</a-button
										>
									</p>
								</template>
							</a-list-item-meta>
						</a-list-item>
					</template>
				</a-list></a-col
			>
			<a-col :span="12">
				<h2>购物车</h2>
				<a-list item-layout="horizontal" :data-source="sartData">
					<template #renderItem="{ item }">
						<a-list-item>
							<a-list-item-meta>
								<template #title>
									<a href="">{{ item.title + ' * ' + item.num }}</a>
								</template>
								<template #avatar>
									<a-image :src="item.src" :width="100" />
								</template>
								<template #description>
									<p>￥ {{ item.price * item.num }}</p>
									<p>
										<a-input-number
											v-model:value="item.num"
											:min="0"
											:max="99"
											@change="adjustSart(item.id, item.num)"
										/>
									</p>
								</template>
							</a-list-item-meta>
						</a-list-item>
					</template> </a-list
			></a-col>
		</a-row>
	</div>
</template>
<script>
	import { onMounted, reactive, toRefs } from 'vue';
	import { shopStore } from './store';
	export default {
		setup() {
			const data = reactive({
					shopData: [],
					originShopData: [
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
					sartData: [],
					searchData: '',
				}),
				store = shopStore(),
				// 根据相应排除筛选商城数据
				filterShopDataByValForType = (val, type) => {
					const tempData = JSON.parse(JSON.stringify(data.originShopData));
					if (type === 'id')
						return tempData.filter((item) => item[type] === val);
					else if (type === 'title')
						return tempData.filter((item) => item[type].match(val));
				},
				// 根据ID查找索引
				getSartDataIndexById = (id) => {
					const tempData = JSON.parse(JSON.stringify(data.sartData));
					return tempData.findIndex((item) => item.id === id);
				},
				// 加入购物车数据
				joinSart = (id) => {
					// store.joinSartData(id);
					const tempData = filterShopDataByValForType(id, 'id'),
						bookI = getSartDataIndexById(id);
					if (bookI >= 0) data.sartData[bookI].num++;
					else data.sartData.push(tempData[0]);
				},
				// 调整购物车数据
				adjustSart = (id) => {
					// store.adjustSartData(id);
					const bookI = getSartDataIndexById(id);
					if (data.sartData[bookI].num === 0) {
						data.sartData.splice(bookI, 1);
					}
				},
				// 搜索商城
				searchShopData = (val) => {
					data.shopData = filterShopDataByValForType(val, 'title');
				};
			onMounted(() => {
				data.shopData = JSON.parse(JSON.stringify(data.originShopData));
			});
			return {
				...toRefs(data),
				store,
				joinSart,
				adjustSart,
				searchShopData,
			};
		},
	};
</script>
<style>
	#app {
		font-family: Avenir, Helvetica, Arial, sans-serif;
		-webkit-font-smoothing: antialiased;
		-moz-osx-font-smoothing: grayscale;
		/* text-align: center; */
		color: #2c3e50;
	}
	.box {
		width: 60%;
		margin: 50px auto;
		padding: 10px;
	}
</style>
