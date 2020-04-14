# Stirling-Number-Grouping
Dividing a group of Numbers into different parts and List all the cases

https://oi-wiki.org/math/stirling/

第二类斯特林数。上述OI wiki 只给出了数量的推导方式，本代码实现所有情况的列举。运行main.m

本代码是递归实现的，对于8G的运行内存可以运行n=12的情况，再往上需要更强的计算资源。

10个数分成10组、9组、8组……1组。结果储存在ResultData文件夹中。

测试12个数分成12组、11组、10组……1组。

12个数的结果数据非常巨大，大于1.5GB，且程序由于是递归实现，占用的运行内存超过了5G。

概略结果示意：

把{1,2,3,4,5,6,7,8,9,10}分成不同组的结果

![Image text](https://github.com/Robotics-Zhikai/Stirling-Number-Grouping/blob/master/ResultImage/%E6%8A%8A1%E8%87%B310%E5%88%86%E6%88%90%E4%B8%8D%E5%90%8C%E7%BB%84%E7%BB%93%E6%9E%9C.png)

![Image text](https://github.com/Robotics-Zhikai/Stirling-Number-Grouping/blob/master/ResultImage/%E6%8A%8A1%E8%87%B310%E5%88%86%E6%88%90%E4%BA%94%E7%BB%84%E7%9A%84%E9%83%A8%E5%88%86%E7%BB%93%E6%9E%9C.png)

![Image text](https://github.com/Robotics-Zhikai/Stirling-Number-Grouping/blob/master/ResultImage/%E6%8A%8A1%E8%87%B310%E5%88%86%E6%88%90%E5%85%AD%E7%BB%84%E7%9A%84%E9%83%A8%E5%88%86%E7%BB%93%E6%9E%9C.png)

把{1,2,3,4,5,6,7,8,9,10,11,12}分成不同组的结果

![Image text](https://github.com/Robotics-Zhikai/Stirling-Number-Grouping/blob/master/ResultImage/%E6%8A%8A1%E8%87%B312%E5%88%86%E6%88%90%E4%B8%8D%E5%90%8C%E7%BB%84%E7%BB%93%E6%9E%9C.png)

![Image text](https://github.com/Robotics-Zhikai/Stirling-Number-Grouping/blob/master/ResultImage/%E6%8A%8A1%E8%87%B312%E5%88%86%E6%88%90%E5%85%AD%E7%BB%84%E7%9A%84%E9%83%A8%E5%88%86%E7%BB%93%E6%9E%9C.png)




