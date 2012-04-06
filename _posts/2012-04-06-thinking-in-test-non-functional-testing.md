---
layout: post
title: "测试思考系列[5]：非功能性测试"
description: "测试思考系列[5]：非功能性测试"
category: 测试
tags: [测试, 性能, 兼容, 安全, LoadRunner, 易用]
---
{% include JB/setup %}

非功能性测试是针对非功能性需求来说的。所谓[非功能性需求](http://www.51testing.com/html/90/n-79290.html)，是指软件产品为满足用户业务需求而必须具有且除功能需求以外的特性。软件产品的非功能性需求包括系统的性能、可靠性、可维护性、可扩充性和对技术和对业务的适应性等。下面对其中的某些指标加以说明。在这里可以看到非功能性需求涉及的范围很广，软件产品本身不是孤立存在的，还涉及到诸多外在环境的影响。非功能性需求必须考虑软件既要可用，又要易用。这篇文章主要介绍在非功能性方面的一些思考和实践，分为性能测试、兼容性测试、安全性测试、易用可用性测试。

- **性能测试.**

性能测试主要分为性能报告和性能调优两个角度，但无论是从哪一个角度去做，最大的忌讳都是凭着感觉去猜，把90%的精力浪费在了10%不重要不是瓶颈的地方。

首先需要确定用户的性能需求，比如有些功能的性能虽然很差，但是用户并不十分在意，比如定时执行任务功能等等，再比如首页页面显示功能，虽然只需要几秒就可出现，但是用户对它的要求是非常高的(<=1s)，这个就是用户对不同功能有着不同的性能需求。如果性能调优的时间浪费在用户没有性能需求的地方，产生的优化结果对于用户的性能体验来说并没有任何的改善。

其次，一个重要的原则是，在做任何优化之前需要先profile一下性能瓶颈，切忌风风火火的优化，结果发现方向错了。有很多优秀的Profiler工具，比如[JProfiler](http://www.ej-technologies.com/products/jprofiler/overview.html)和[YourKit](http://www.yourkit.com/)，web前端优化方面，FireBug的概况和网络功能很不错。

在并发测试和疲劳强度测试方面，不得不提的工具是LoadRunner。关于LoadRunner和并发测试知识的介绍，推荐看看Jackei的[《LoadRunner没有告诉你的系列》](http://www.cnblogs.com/jackei/archive/2006/11/11/557972.html)，尤其是里面的[理发店模型](http://www.cnblogs.com/jackei/archive/2006/11/20/565527.html)，通俗易懂，性能测试入门者必看。并发测试的优化方面，关于结果缓存的优化，特别是那种执行得出结果需要较长时间的过程，Java并发包的Future.get()是一个很不错的面向对象的概念，具体的详细介绍请参考《Java Concurrency in Practice》一书的5.6章节: Building an Efficient, Scalable Result Cache。

![Java Concurrency in Practice]({{ BASE_PATH }}/uploads/2012/04/java_concurrency.jpg)

Web前端性能测试方面，也有很多优化的技巧，如果你用的是Jquery，[这篇文章](http://www.artzstudio.com/2009/04/jquery-performance-rules/)总结的不错，尤其是第一条, Always Descend From an #id， 在我之前的[JQuery性能分析](http://hackfisher.info/blog/2011/01/jquery-performance-profile/)这篇文章里面有过详细介绍。

- **兼容性测试.**

向后兼容性指硬件和软件系统可以使用该系统的早期版本的接口和数据。向后兼容性考虑的是对接口的变更如何影响接口的现有用户（也称为服务使用者）。如果现有用户不受影响，则变更就是向后兼容的。如果现有用户受到影响，则变更不向后兼容，将需要使用策略来管理变更的影响。

兼容性测试的关键点在于分清楚设计成兼容和设计成不兼容，这个是测试人员主要关注的点。在有兼容性报告之前，用户经常会发现一个功能不能用了，以为是BUG，其实是设计成不兼容的，又没有相应的文档告知。

就像程序员之间经常流传的一个笑话一样：It's not a bug, it's a feature. 感觉上，像是测试人员给设计人员背了黑锅，明明是设计的垃圾，导致增增减减修修补补，反正设计成不兼容到最后都反馈不到设计人员头上，都认为是测试人员的问题。但实际上，测试人员本身没有责任吗，可不可以做的更多使情况往更好的方向发展？ 其实测试只需要将反馈流弥补通，将不兼容的后果反馈给设计人员，产品设计也可以从用户身上学到更多，自然会对兼容性问题更谨慎一点，而测试本身通过兼容性报告也对产品发布的影响有了更多了解，还可以顺带帮文档把升级指南给做了。采用兼容性报告前后，对比各种兼容性问题造成的影响来看，兼容性报告效果明显。

与兼容性相关的就是发布的版本号，兼容性可能导致的一个问题在软件管理中叫做[dependency hell](http://en.wikipedia.org/wiki/Dependency_hell)，随着系统越来越大，越来越复杂，这个问题会越来越严重。于是有人想出了解决办法，通过规范版本号，叫做[Semantic Versioning](http://semver.org/)。作者[preston-werner](http://tom.preston-werner.com/)是github.com的创始人之一。

- **安全性测试.**

安全性在中国正在受到越来越多的重视，比如前段时间闹得沸沸扬扬的[CSDN密码泄密门](http://article.pchome.net/content-1481119.html)，相应的安全性测试也会越来越受重视。常见的SQL注入等漏洞可以借助于[AppScan](http://www-01.ibm.com/software/awdtools/appscan/)这类安全性测试工具检测出来。

- **易用可用性测试.**

易用性测试报告除了可以对发布的产品信息了解更充分的作用外，还可以作为资料反馈给产品组，用户改进用户体验和产品易用性。测试组成员作为“产品发布前使用产品最多的人”，所以“易用性测试报告”应该成为 用户体验改进和易用性改进的重要依据。

参考资料:

1. <http://www.uml.org.cn/zjjs/200609185.htm#1>
2. <http://hackfisher.info/blog/2011/01/jquery-performance-profile/>
3. <http://www.cnblogs.com/jackei/archive/2006/11/20/565527.html>
4. <http://www.artzstudio.com/2009/04/jquery-performance-rules/>