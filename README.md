# 项目名称

WorkLogCam - 一个用于施工和外出工作的打卡应用

## 项目简介

WorkLogCam是一个用于在施工和外出工作场景中进行打卡的iOS应用。该应用支持拍照并将位置信息、天气信息、海拔信息和时间信息以卡片水印的方式嵌入到照片中。

## 功能特点

- 相机功能：拍摄照片
- 位置信息：获取当前位置
- 天气信息：通过API获取实时天气
- 海拔信息：获取设备当前海拔
- 时间信息：将当前时间嵌入到拍摄的照片中

## 使用方法

### 安装依赖

在Xcode中打开项目，确保你的开发环境已配置好Swift和Xcode。

### 配置权限

在项目的Info.plist文件中添加以下权限描述：

```xml
<key>NSCameraUsageDescription</key>
<string>We need access to your camera for taking photos.</string>
<key>NSLocationWhenInUseUsageDescription</key>
<string>We need access to your location for geo-tagging photos.</string>
```

### 编译和运行

使用Xcode编译并运行项目。

### 注意事项

确保设备已连接到互联网，以获取实时天气信息。

## 目录结构

```
├── WorkLogCam
│   ├── WorkLogCam
│   │   ├── Assets.xcassets
│   │   ├── ContentView.swift
│   │   └── ...
│   ├── WorkLogCam.xcodeproj
│   └── ...
├── WorkLogCamTests
│   └── ...
└── WorkLogCamUITests
    └── ...
```

## 贡献

欢迎提出问题、建议和改进！请提交问题以便我们能够改进此应用。

## 许可证

[MIT License](LICENSE)
