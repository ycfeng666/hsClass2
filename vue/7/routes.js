let routes = [];
const lang_zh = [
	[
		// 一级菜单
		['music', '音乐'],
		// 二级菜单
		['chinese', '华语'],
		['english', '英语'],
		['russian', '俄语'],
	],
	[
		['movie', '电影'],
		['history', '历史电影'],
	],
	[
		['news', '新闻'],
		['world', '国际新闻'],
	],
];
lang_zh.forEach((it1, i1) => {
	let arr1 = {
		component: { template: '<router-view></router-view>' },
		meta: {
			title: it1[0][1],
			url: '/' + it1[0][0],
			viewIndex: i1,
		},
	};
	if (i1 === 0) {
		arr1['path'] = '/';
		arr1.meta.url = '/';
	} else if (i1 !== 0) {
		arr1['path'] = '/' + it1[0][0];
		arr1.meta.url = '/' + it1[0][0];
	}
	arr1['children'] = [];
	it1.forEach((it2, i2) => {
		if (i2 !== 0) {
			let arr2 = {
				path: it2[0],
				component: { template: '这是' + it2[1] },
				meta: {
					name: it2[1],
				},
			};
			if (i1 === 0) arr2.meta.url = '/' + it2[0];
			else if (i1 !== 0) arr2.meta.url = '/' + it1[0][0] + '/' + it2[0];
			arr1.children.push(arr2);
		}
	});
	routes.push(arr1);
});
