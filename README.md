# 实验说明
## 本实验利用ruby on rails框架实现了简单的网页制作，通过实验对ruby on rails框架有了一个基本的了解，网页实现具体功能如下：

### 1.页面能够获取系统时间<br>
通过改写ruby控制模块，使得网页获得系统时间后能够根据时间范围给出不同的问候语句，功能界面截图如下，可以看到在不同的时间主页面的欢迎语句不同：<br>

<img src="/lib/home.png" width = "700">

<img src="/lib/home_night.png" width = "700">

### 2.能够link到其他主页<br>
通过编写html文件，添加链接实现在主页中点击链接跳转到UCAS主页的功能，功能界面截图如下：<br>

<img src="/lib/clicktoucas.png" width = "700">

<img src="/lib/home-ucas.png" width = "700">

### 3.能够实现两个页面间的相互跳转<br>
通过在rail自动生成的greeting文件夹内创建新的html文件，然后分别在home页面和bye页面中进行html文件的编写实现两个页面点击互相跳转的功能，功能截图如下：<br>

<img src="/lib/clicktobye.png" width = "700">

<img src="/lib/home-jump.png" width = "700">

### 4.在ruby on rails框架中建立数据库并进行数据库的增删查改<br>
通过调用rails generate coursetable .......指令实现表格的创建，接着调用rake db：migrate可以实现表格与网页的链接，rails便会帮助我们自动生成一些
列的相关文件，我们便可以在自己的网页中显示这个创建的表格并对他进行表项的添加删除操作，当然我们也可以利用rails对表格进行查找，具体实现界面如下：<br>

<img src="/lib/clicktotable.png" width = "700">

<img src="/lib/tableclicktohome.png" width = "700">
