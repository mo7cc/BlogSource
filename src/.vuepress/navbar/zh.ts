import { navbar } from 'vuepress-theme-hope';

export const zhNavbar = navbar([
  {
    text: '索引',
    icon: 'jiansuo',
    children: [
      { text: '全部', icon: 'list', link: '/article' },
      { text: '分类', icon: 'category', link: '/category' },
      { text: '标签', icon: 'tag', link: '/tag' },
      { text: '时间轴', icon: 'time', link: '/timeline' },
    ],
  },
  '/posts',
  {
    text: '收藏',
    icon: 'start',
    children: ['/favorite/links', '/favorite/movies', '/favorite/music', '/favorite/photos'],
  },
  '/about',
]);
