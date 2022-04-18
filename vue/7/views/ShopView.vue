<template>
	<div class="box">
		<ul>
			<li class="item" v-for="(item, index) in store.shopData" :key="index">
				<div class="img"><img :src="item.src" alt="" /></div>
				<div class="info">
					<p class="title">{{ item.title }}</p>
					<p class="price">￥ {{ item.price }}</p>
					<p>
						<button class="btn" @click="joinSart(item.id)">加入购物车</button>
					</p>
				</div>
			</li>
		</ul>
	</div>
</template>

<script>
	import { shopStore } from '../store';
	import { useRouter } from 'vue-router';
	export default {
		setup() {
			const store = shopStore(),
				Router = useRouter(),
				joinSart = (id) => {
					store.joinSartData(id);
					Router.push('/sart');
				};
			return {
				store,
				joinSart,
			};
		},
	};
</script>

<style>

</style>
