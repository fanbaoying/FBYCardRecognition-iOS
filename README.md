

## Demo接入流程

#### 1.导入ReactiveCocoa框架

使用ReactiveCocoa对银行卡识别出的信息回调。

添加ReactiveCocoa框架最简单的方法就是用CocoaPods导入。

如果你从没用过CocoaPods，可以参考[CocoaPods | iOS详细使用说明](https://juejin.im/post/5a5313bff265da3e347b18fb)这篇教程吧。请至少看完教程中初始化的步骤，这样你才能安装框架。

如果不想用CocoaPods，你仍然可以使用ReactiveCocoa，具体查看Github文档中引入ReactiveCocoa的步骤描述。

这里简单介绍CocoaPods导入：
键盘输入 i，进入编辑模式，输入下面代码
```
platform :ios, '8.0'
use_frameworks!

def pods
  pod 'ReactiveCocoa', '2.3.1'
end

target '项目名称' do
  pods
end
```
下载框架即可。

#### 2.添加配置

在你的项目的Info.plist文件中，添加权限描述（Key   Value）
Privacy - Camera Usage Description 是否允许访问相机
Privacy - Photo Library Usage Description 是否允许访问相册
如下图：
![plist](https://user-gold-cdn.xitu.io/2018/1/2/160b57cc1a6b2c9d?w=1136&h=804&f=png&s=173122)

#### 3. 项目设置

1. 选择项目名字，选择Build Settings，搜索enable bitcode 设置为NO。

2. xcode8上边编译可能会遇到arm64错误， 选择项目名字，选择Build Settings，搜索Enable Testability 设置为NO。

#### 4.首先把demo下载下来

![demo截图](http://upload-images.jianshu.io/upload_images/2829694-090011dc648dcd91.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

#### 5.打开项目将下面的文件拷贝到自己的工程中：

* FBYBase
* bank_card
* BankData

#### 6. 项目引用

在项目中需要使用的页面，增加引用代码：
```
#import "IDCardCaptureViewController.h"

#import "FBYBankCardViewController.h"

#import "TIDCardCaptureViewController.h"
```
在点击扫描银行卡的点击事件中，跳转页面：
```
FBYBankCardViewController *bcvc = [[FBYBankCardViewController alloc]init];

[self.navigationController pushViewController:bcvc animated:YES];
```
在点击扫描身份证头像面的点击事件中，跳转页面：
```
IDCardCaptureViewController *idcvc = [[IDCardCaptureViewController alloc]init];
    
[self.navigationController pushViewController:idcvc animated:YES];
```
在点击扫描身份证国徽面的点击事件中，跳转页面：
```
TIDCardCaptureViewController *idcvc = [[TIDCardCaptureViewController alloc]init];
    
[self.navigationController pushViewController:idcvc animated:YES];
```
到此项目就接入完成！！！

> 希望可以帮助大家，如有问题可加QQ群: 668562416 交流

> 如果哪里有什么不对或者不足的地方，还望读者多多提意见或建议

> 如需转载请联系我，经过授权方可转载，谢谢
