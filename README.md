# Godot_IOS_TTS_Module

#### Godot_IOS_TTS_Demo
* [Godot_IOS_TTS_Demo `以下内容操作成功后，可使用此项目检查`](https://github.com/lminggang/Godot-IOS-TTS-Demo)


#### 参考
* [FBloginGodotiOS](https://github.com/pratikprajapati30/FBloginGodotiOS/tree/master/GodotFacebook)
* [How compile Custom module for iOS in Godot Engine](https://www.youtube.com/watch?v=eOmpZzYMKOE)

#### 准备工作
* [下载 Godot 3.2.2](https://downloads.tuxfamily.org/godotengine/3.2.2/Godot_v3.2.2-stable_osx.64.zip)
* [下载 Godot 3.2.2 Template](https://downloads.tuxfamily.org/godotengine/3.2.2/Godot_v3.2.2-stable_export_templates.tpz)
* [下载 Godot 3.2.2 Source Code](https://github.com/godotengine/godot/archive/3.2.2-stable.zip)
* [下载 Godot IOS TTS Module](https://github.com/lminggang/Godot_IOS_TTS_Module)

#### 操作流程
```
1. 将下载好的 Godot TTS Module IOS 复制到, godot-3.2.2-stable/modules/ 文件及中

2. 进入到 godot-3.2.2-stable 文件夹下，开始编译
    scons p=iphone tools=no target=debug arch=arm
    scons p=iphone tools=no target=debug arch=arm64
    
    # 最后看到 scons: done building targets. 就是编译好了
    
    lipo -create bin/libgodot.iphone.debug.arm.a bin/libgodot.iphone.debug.arm64.a -output bin/libgodot.iphone.debug.fat.a

3. 将编译好的 libgodot.iphone.debug.fat.a 复制到 godot-3.2.2-stable/misc/ios_xcode 文件夹下
   #  libgodot.iphone.debug.fat.a 位置在 godot-3.2.2-stable/bin/ 文件夹中

4. 制作 iphone template
    1. 复制 godot-3.2.2-stable/misc/ios_xcode 到当前文件夹
    2. 将复制后的 ios_xcode 文件夹更名为 iphone
    3. 将 iphone 打包成 zip
    4. 将 iphone.zip 复制到 ~/Library/Application Support/Godot/templates/3.2.2.stable 文件夹内

5. 进入 Godot 编写代码，导出到 IOS 即可
```

## 其他问题
#### godot 默认没有加载模板
```
1. 进入 Godot 随便创建一个项目
2. 进入项目后
    1). 点击 Editor
    2). 点击 Manager Export Template
    3). 点击 Install From File
    4). 选择下载好的 Godot_v3.2.2-stable_export_templates.tpz 点击 Open 就开始安装了，安装后再文件夹(Mac) ~/Library/Application Support/Godot/templates/3.2.2.stable
```

#### 编译报错
* [How compile Custom module for iOS in Godot Engine](https://www.youtube.com/watch?v=eOmpZzYMKOE)
```
这部分最好跟着视频一起做
```

