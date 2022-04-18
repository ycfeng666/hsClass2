<template>
	<div>
		<ul class="nav">
			<li><router-link to="/"> 首页 </router-link></li>
			<li><router-link to="/sart"> 购物车 </router-link></li>
		</ul>
		<router-view />
	</div>
</template>

<style>
	#app {
		font-family: Avenir, Helvetica, Arial, sans-serif;
		-webkit-font-smoothing: antialiased;
		-moz-osx-font-smoothing: grayscale;
		text-align: center;
		color: #2c3e50;
	}
	ul,
	li {
		margin: 0;
		padding: 0;
		list-style: none;
	}
	.click {
		background-color: #e74c3c;
		color: white !important;
	}
	.box {
		width: 60%;
		margin: 50px auto;
		padding: 10px;
	}
	.item {
		text-align: left;
		border-bottom: 3px solid #bbb;
		padding: 5px;
	}
	.item:not(:first-child) {
		margin-top: 10px;
	}
	.item > div {
		display: inline-block;
	}
	.item .img {
		width: 20%;
		border: 1px solid #333;
	}
	.item .info {
		width: 75%;
		float: right;
	}
	.img img {
		width: 100%;
		height: 100%;
	}
	.info .title {
		font-size: 20px;
		font-weight: bold;
	}
	.info .price {
		font-size: 18px;
		color: #888;
	}
	.info .btn {
		padding: 2px;
		background-color: #888;
		color: white;
		border-color: transparent;
		cursor: pointer;
	}
</style>
<style scoped>
	.nav {
		height: 70px;
		line-height: 70px;
		border: 0.06em solid #e3e3e3;
		box-shadow: 0 4px 12px -6px #c4c4c4;
	}

	.nav li {
		float: left;
		width: 80px;
		text-align: center;
	}

	.nav a {
		display: inline-block;
		text-decoration: none;
		color: #000;
	}
	.nav a.router-link-exact-active {
		color: #42b983;
	}
</style>
