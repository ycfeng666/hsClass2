<template>
	<div class="box">
		<ul>
			<li class="item" v-for="(item, index) in store.sartData" :key="index">
				<div class="img"><img :src="item.src" alt="" /></div>
				<div class="info">
					<p class="title">{{ item.title + ' * ' + item.num }}</p>
					<p class="price">￥ {{ item.price * item.num }}</p>
					<p>
						<b>数量：</b
						><input
							type="number"
							v-model="item.num"
							max="99"
							min="0"
							@change="adjustSart(item.id, item.num)"
						/>
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
				adjustSart = (id, num) => {
					store.adjustSartData(id);
					if (num === 0) Router.push('/');
				};
			return {
				store,
				adjustSart,
			};
		},
	};
</script>

<style></style>
