# 深度链接实现指南

## 📱 概述

本应用已集成深度链接功能，支持通过自定义scheme和HTTPS链接直接导航到应用内的特定页面。

## 🔗 支持的链接格式

### 1. 自定义Scheme链接
```
mueinorders://home
mueinorders://orders
mueinorders://profile
mueinorders://notifications
```

### 2. HTTPS链接
```
https://mueinorders.com/home
https://mueinorders.com/orders
https://mueinorders.com/profile
https://mueinorders.com/notifications
```

## 🛠️ 技术实现

### 依赖包
- `uni_links: ^0.5.1` - 处理深度链接监听
- `go_router: ^17.0.1` - 路由管理（已存在）

### 核心文件

#### 1. 深度链接服务
`lib/core/services/deep_link_service.dart`
- 监听应用启动时的深度链接
- 监听应用运行时的深度链接
- 解析链接并导航到对应路由

#### 2. 路由配置
`lib/core/routing/app_router.dart`
- 更新了redirect逻辑以支持深度链接
- 处理认证状态下的深度链接导航

#### 3. 平台配置

**Android** (`android/app/src/main/AndroidManifest.xml`)
```xml
<intent-filter android:autoVerify="true">
    <action android:name="android.intent.action.VIEW" />
    <category android:name="android.intent.category.DEFAULT" />
    <category android:name="android.intent.category.BROWSABLE" />
    <data android:scheme="mueinorders" />
    <data android:scheme="https" />
    <data android:host="mueinorders.com" />
    <data android:host="www.mueinorders.com" />
</intent-filter>
```

**iOS** (`ios/Runner/Info.plist`)
```xml
<key>CFBundleURLTypes</key>
<array>
    <dict>
        <key>CFBundleURLName</key>
        <string>com.example.mueinorders</string>
        <key>CFBundleURLSchemes</key>
        <array>
            <string>mueinorders</string>
        </array>
    </dict>
</array>
```

## 🧪 测试

### 1. 使用测试工具
```dart
import 'package:mueinorders/core/utils/deep_link_tester.dart';

// 测试单个链接
DeepLinkTester.testDeepLink('mueinorders://home');

// 显示测试对话框
DeepLinkTester.showTestDialog(context);
```

### 2. 命令行测试（Android）
```bash
adb shell am start -W -a android.intent.action.VIEW -d "mueinorders://home" com.example.mueinorders
```

### 3. 浏览器测试
在浏览器中输入：
- `mueinorders://home`
- `https://mueinorders.com/home`

## 📝 使用示例

### 1. 在通知中使用
```dart
// 创建包含深度链接的通知
final notification = NotificationDetails(
  android: AndroidNotificationDetails(
    'channel_id',
    'channel_name',
    importance: Importance.max,
    priority: Priority.high,
  ),
);

await flutterLocalNotificationsPlugin.show(
  0,
  '新订单',
  '查看您的订单',
  notificationDetails,
  payload: 'mueinorders://orders',
);
```

### 2. 在分享内容中使用
```dart
await Share.share(
  '查看我的订单: mueinorders://orders/123',
  subject: '订单分享',
);
```

### 3. 在邮件/SMS中使用
```
查看您的订单详情: https://mueinorders.com/orders/123
```

## 🔧 高级配置

### 1. 添加参数支持
```dart
// 解析带参数的链接
mueinorders://orders/123?status=pending

// 在DeepLinkService中处理
final orderId = uri.pathSegments[1];
final status = uri.queryParameters['status'];
```

### 2. 自定义域名
更新Android和iOS配置中的域名：
- Android: `android:host="yourdomain.com"`
- iOS: 更新Associated Domains配置

### 3. Universal Links (iOS)
如需支持Universal Links，需要在服务器上配置：
1. 创建 `apple-app-site-association` 文件
2. 上传到 `https://yourdomain.com/.well-known/apple-app-site-association`
3. 在Xcode中配置Associated Domains

## 🐛 故障排除

### 常见问题

1. **链接无法打开应用**
   - 检查AndroidManifest.xml或Info.plist配置
   - 确认scheme和host配置正确
   - 重新安装应用

2. **路由解析失败**
   - 检查路由名称是否在RouteConfig中定义
   - 确认路径格式正确（以/开头）

3. **认证问题**
   - 检查AuthBloc状态
   - 确认路由在AppRouterRedirect.public列表中

### 调试技巧

1. **启用调试日志**
```dart
// 在main.dart中
if (kDebugMode) {
  // 深度链接调试信息会自动打印
}
```

2. **使用测试工具**
```dart
DeepLinkTester.showTestDialog(context);
```

## 📚 扩展阅读

- [Flutter深度链接官方文档](https://docs.flutter.dev/cookbook/navigation/deep-linking)
- [uni_links包文档](https://pub.dev/packages/uni_links)
- [go_router深度链接](https://pub.dev/packages/go_router#deep-linking)

## 🔄 更新日志

- v1.0.0: 初始实现，支持基本的深度链接功能
- 支持自定义scheme和HTTPS链接
- 集成测试工具
