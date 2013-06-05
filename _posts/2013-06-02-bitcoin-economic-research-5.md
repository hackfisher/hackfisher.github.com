---
layout: post
title: "Bitcoin经济研究系列文章五, Ripple的野心"
description: "Part Five of Bitcoin Economic Reseach, The Ambitions of Ripple"
category: 研究
tags: [Ripple, Bitcoin, Risk, Currency]
---
{% include JB/setup %}

我们在上一篇文章“货币的非国家化”中提到过，最终那些最好的货币不一定是靠天才设计出来的，但一定是通过竞争生存下来的，这也是哈耶克的观点，他认为优秀货币理应如此胜出。比特币虽然在某些特性上明显要比传统法币出色，但是由于局限于中心化的交易所，不断受到威胁，苦于无法与传统法币自由竞争。于是似乎受到某种感召，[Ripple](https://ripple.com/)出现了，带着蓬勃的野心，伺机颠覆传统的金融系统并创造金融货币的自由市场。Ripple的目标，不仅仅是货币。

![Currency Symbols]({{BASE_PATH}}/uploads/2013/06/Currency-Symbol_Regions_of_the_World_circa_2006_cropped.png)

什么是Ripple?

Ripple,是比bitcoin更激进的货币实践。Ripple是以一个数字货币（XRP）和一个开放式的货币转移支付网络共同命名的。它是一个分布式的、开源的支付系统，目前仍在内测中。根据其网站的描述，ripple系统的目标是使人们摆脱的“围墙花园”似的传统金融网络。也就是说，货币在信用卡，银行，PayPal和其他机构间兑换，仅需要很短时间并且极少的手续费。 

Ripple之所以成为比特币之后的一个关注点，是因为包括安德森·霍洛维茨在内的几家著名风投机构于4月10日宣布参与投资OpenCoin，Ripple则是OpenCoin公司开发、运行、维护的虚拟货币网络。 

或许在外人眼里，Ripple是个后来者，但实际上Ripple项目的起源远远早于比特币。2004年，Ryan Fugger就推出了Ripple的第一个实现版本。它的目标是构建一个去中心化的、准许任何人创建自家货币的虚拟货币系统。 公司的两个创始人：Chris Larsen和Jed McCaleb均非等闲之辈。前者在网络金融领域已经摸爬滚打十多年，是著名互联网银行E-Loan和p2p信贷公司Prosper的创始人。后者则是最大的比特币交易平台Mt.Gox的开发者（同时也是著名P2P网络eDonkey——电驴的开发者）。 

业内强力人士的加入，为Ripple项目带来了巨大变化。新版Ripple引入两个措施解决孤立小圈子的问题：其一是推出Ripple币——XRP，它作为Ripple网络的基础货币，就像比特币一样可以整个网络中流通，而不必局限于熟人圈子；其二是引入网关（Gateway）系统，它类似于货币兑换机构，允许人们把法定货币注入、抽离Ripple网络，并可充当借、贷双方的桥梁。 

从最基本的来说，**Ripple提供了一种任何人从任何地方转账任何货币给任何人的一种方式**。但是，我们还是会问Ripple究竟是什么，它是[如何](https://ripple.com/how-ripple-works/)做到这一点的？

![How Ripple Works]({{BASE_PATH}}/uploads/2013/06/Ripple_how.png)


更具体一点来说，设计上Ripple学习借鉴了比特币的精华，从内部上看，**它是一个分布式P2P的系统**，所有的节点上的数据库共同维护着总账，而总账则记录了所有的转账，账户以及收支等信息。货币流通的所需要花费的时间就是更新这个总账所需要的时间。这样一个分布式系统建立在一种共识之上，共识的过程保证所有的节点来确认和接受转账并接受同一个总账，同时这个过程保证了进入了总账的转账记录合法性。当然，这样设计的系统和比特币一样，同样面临着51%攻击的风险。

![Ripple Ledger]({{BASE_PATH}}/uploads/2013/06/ledger.png)
![Ripple Consensus]({{BASE_PATH}}/uploads/2013/06/consensus.png)

从外界来看，**Ripple是一个有着清晰边界的统一系统，这个边界就是Gateway**，Gateway负责Ripple所有货币的流入和流出，是Ripple内部和外部经济的桥梁。接入Gateway的可以简单的像一个货币银行，就像传统的银行那样，Ripple内部记录的就是你在这个Gateway上有多少钱。与传统意义上不同的是，任何人都可以实现一个Gateway，但是为了实现这一点，Ripple引入了Trust(信任度)的概念，以提醒或防止Gateway欺骗泛滥。传统意义上，我将100元存入银行，这100元即为银行对我的负债，我之所以敢将钱存放在银行那边，是因为我相信(Trust)无论如何，即使银行倒闭也能清偿这100元给我。很大程度上，信任度可能更信用有关，也有可能是因为银行被政府信用担保。

![Ripple Gateway]({{BASE_PATH}}/uploads/2013/06/Gateway.png)

**Ripple是一个分布式的交易系统框架**，各种各样的交易系统通过Gateway连接到Ripple，进而连接到其他的交易系统。中心化的交易所一直以来是比特币最头疼的问题，中心化意味着巨大风险和单点故障。社区曾经多次讨论过有无可能建立这样一个分布式的交易系统，但是因为牵涉到法币，很难由用户节点构建。没想到，现在Ripple在理念上更进一步，并非重新构建，而是连接现有的交易所，提供除了交易以为其他的服务(包括法币)，随着像[ButterCoin](https://github.com/buttercoin/buttercoin)这样的项目展开，个人构建交易所节点将会变成一件非常容易的事情。

![Ripple as P2P exchange]({{BASE_PATH}}/uploads/2013/06/exchange.png)

**在Ripple看来，当今的货币即数字**。所以Ripple所说的任何货币，不仅仅包括像比特币这样的虚拟货币，也包括传统的法币，只要这个法币可以抽象成数字。Ripple包容性不可谓不强，货币自由竞争的技术条件由此具备。

**Ripple发行一种虚拟货币，叫做XRP**。当我们说Ripple的时候，并不是相对于Bitcoin来说的，而是相对于像Paypal和传统金融系统来说，而当我们说XRP的时候，相对的就是BTC。毫无疑问，Ripple提供了一种新的货币XRP来与BTC竞争。Ripple系统创建了固定数量的XRP，总数1000亿。Ripple似乎不喜欢比特币那样的矿工系统，XRP本来是被设计用于支付转账费用(Fee)，处于安全的考虑，每一次转账都需要一小笔转账费用，但是和Bitcoin将这笔费用支付给矿工不同， Ripple选择直接丢弃销毁这些XRP，效果等同于将这些XRP按持有比例分配给XRP所有者。

当然，每一种货币可能都有它的用途，XRP也可以作为像BTC一样的货币，今天1BTC大约可以兑换6500XRP。

![XRP]({{BASE_PATH}}/uploads/2013/06/XRP.png)

关于Ripple最有争议的应该是它背后的组织，[OpenCoin](http://opencoin.org/)。这是一个盈利性的公司，有外部投资，至今没有公开Ripple的关键源代码，虽然它声称一定会公开。它保留25%的XRP用作公司的运营和盈利，关于XRP初期的分配看上去十分随意和人为操控(货币发行量有限的美联储？)。虽然设计上是开放的，但是到目前的现实仍然是中心化的，意味着巨大的风险，很多人怀疑这是一个骗局，不是没有道理。但另一方面，Ripple并不是毫无价值，至少能解决一些问题，虽然组织和系统运作的方式存在争议，但是到目前为止还能工作。与中本聪包揽Bitcoin设计，然后放弃控制一样，Ripple创始人也许不但希望包揽设计，也想包揽系统实现以确保成功，虽然他们似乎理解开放与长远回报紧密相关，但最终在眼前利益面前，他们是否舍得放弃对Ripple的控制？这一点确实值得让人担心一下。

Ripple带给我们如此之多的新设想，应接不暇。即使只有分布式交易系统一点，就足以吸引人眼球，但是这顶多算是其中一小部分。Ripple的野心在于它希望开拓一个全新的领域，颠覆传统，以至于目前还无法完全想象其未来到底有多震撼!

参考：

1. (关于Ripple你需要知道的10件事)[http://www.douban.com/group/topic/39564244/]

--------------------------------------------------------------------
如果你觉得这篇文章对你有用，可以捐赠一点 BTC 给我玩玩。帐号是 **12UhL99zFAF154ip4v9c52YAL8wWUcNXSv**
或者，如果你使用Ripple，也可以用Ripple捐赠一点 XRP或BTC 给我。账号是 **rhzqDrmFCESkvJHTBz4ecQHKWn2oVQewXz**

