---
layout: post
title: "使用Jekyll将博客从WordPress迁移至GitHub"
description: ""
category: 疯言疯语
tags: [Jekyll, WordPress, GitHub, Blog]
---
{% include JB/setup %}
Jekyll是一个使用Ruby编写的静态站点生成工具，使用Liquid模板渲染引擎，支持Markdown和Textile标记语言，并且可以为所有以 .html、.markdown、.textile扩展名结尾的件使用YAML配置，内置语法高亮功能。而Github的Pages服务可以为每个Github主机上的仓库提供静态页面服务，并且Pages服务支持Jekyll。因为Github Pages有两种Pages，分别是用户页面和项目页面，所以我们可以使用用户页面来创建自己的Blog。

用GitHub的好处就有很多了,比如版本控制,比如免费空间,又比如支持CNAME设置自定义域名。

首先,申请一个GitHub帐号，正确配置Git。创建你的Blog仓库username(请确保和你的帐号名相同).github.com。这方面具体的tutorial可以参见[pages.github.com](pages.github.com)


利用[jekyllbootstrap](jekyllbootstrap.com)可以帮助你一步一步的创建最原始的库,可以参考其教程,并且jekyllbootstrap还提供了一些风格供选择。

    $ git clone https://github.com/plusjade/jekyll-bootstrap.git USERNAME.github.com
    $ cd USERNAME.github.com
    $ git remote set-url origin git@github.com:USERNAME/USERNAME.github.com.git
    $ git push origin master

相信很多人原先都是用的WordPress来搭建博客，那么很自然的，就遇到一个问题，如何将原先WordPress中的文章迁移到GitHub中来。jekyll很贴心的提供了一个[教程](https://github.com/mojombo/jekyll/wiki/blog-migrations)

jekyll还有一个很好的地方就是，可以本地预览，预览地址默认为 127.0.0.1:4000

     jekyll --server

这才是Hacker写博客的方式!

<div style="margin-top:20px">参考资料：</div>

- <http://pages.github.com/>
- <https://github.com/mojombo/jekyll/wiki>
- <http://taberh.me/2011/12/26/use-Jekyll-build-Blog-on-Github.html/>
- <http://jekyllbootstrap.com/>
- <https://github.com/HackFisher/hackfisher.github.com>
