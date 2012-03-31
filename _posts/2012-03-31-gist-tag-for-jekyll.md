---
layout: post
title: "Gist Tag For Jekyll, 将Gist和Jekyll集成起来"
description: "Gist Tag For Jekyll"
category: 疯言疯语
tags: [Gist, Jekyll]
---
{% include JB/setup %}
GitHub有一个很好的功能[Gist](https://gist.github.com/)，可以收集和分享代码片段。自己写博客的时候也经常会需要在博客中嵌入代码片段，于是在想是否可以将这两个结合起来。

网上搜到一个[教程](http://brandontilley.com/2011/01/30/gist-tag-for-jekyll.html)，按照他写的插件基本上就可以直接重用了，但是在这个过程中遇到几个问题：

- GitHub Pages处于安全性的考虑[不支持自定义插件](http://stackoverflow.com/questions/8646744/jekyll-plugin-not-working)
但是你别着急，还有有别的办法的，因为Jekyll生成的静态页面，所以也可以采取在本地用插件生成静态页面，然后再上传的[办法](http://charliepark.org/jekyll-with-plugins/)。
方法有很多，我使用的方法来自于这个[教程](http://arademaker.github.com/blog/2011/12/01/github-pages-jekyll-plugins.html)，就是将工程分为两个branch: source和master，因为git的切换比较方便。
官方运行的jekyll命令其实是:
    $ jekyll --pygments --safe

- 本地运行jekyll的时候无法编译，插件[https://github.com/mojombo/jekyll/wiki/Plugins]不起作用, [issue](https://github.com/mojombo/jekyll/issues/527)
最开始的原因找了好久，后来发现将site.safe属性设置为false就行了，官方的wiki竟然没有说明，GitHub也是用参数 --safe来禁用插件的。
但是这边有一个问题，如果你是从jekyllbootstrap项目clone过来的话，将safe设置为false会[导致Google Analytics失效](https://github.com/plusjade/jekyll-bootstrap/issues/53)
如果想同时用插件，又想用Google Analytis的话就冲突了，需要改一下 _includes\JB\analytics文件，将里面的site.safe条件判断去掉。

下面的代码片段是插件的内容，也是我用这个办法，Gist 和 Jekyll集成的效果:

{% gist 2258459 gist_tag.rb %}