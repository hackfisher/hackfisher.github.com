---
layout: post
title: "求两个整数数组交集的更快算法"
description: "求两个整数数组交集的更快算法"
category: 研究
tags: [算法]
---
{% include JB/setup %}

今天在工作中遇到的一个问题，求两个整数数组的交集。一种方案是对其中一个排序，然后对另外一个数组循环，在已经排好序的数组中binarySearch，如果存在，就加到结果集中。下面给出另一种实现，感觉跟归并排序里的思想有点类似：

{% gist 2698628 ArrayIntersect.java %}
