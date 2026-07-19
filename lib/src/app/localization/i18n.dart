import 'package:i18n_extension/i18n_extension.dart';

extension Localization on Object {
  /// Step to localization using i18n_extension package:
  /// 1: install package i18n_extension and flutter_localization
  ///   # localization
  ///   flutter_localization: ^0.1.14
  ///   flutter_localizations:
  ///     sdk: flutter
  ///   i18n_extension: ^10.0.1
  /// 2: in main.dart, setup localizationDelegates and supportedLocales:
  /// MaterialApp(
  ///       localizationsDelegates: const [
  ///         GlobalMaterialLocalizations.delegate,
  ///         GlobalWidgetsLocalizations.delegate,
  ///         GlobalCupertinoLocalizations.delegate,
  ///       ],
  ///       supportedLocales: const [
  ///         Locale('en', "US"),
  ///         Locale('vi', "VI"),
  ///       ],
  /// 3: create a extension Localization on String like this file
  /// 4: import this localization file to the target .dart file and use .i18n after the text that you want to translate.
  // "": {
  // "en-US": "",
  // "vi-VN": "",
  // },

  static final _t = Translations.byId<Object>('en-US', {
    /// Common
    // NoInternetBubble
    // "": {
    // "en-US": "",
    // "vi-VN": "",
    // },
    // "": {
    //   "en-US": "",
    //   "vi-VN": "",
    // },    // "": {
    //   "en-US": "",
    //   "vi-VN": "",
    // },

    'Copy': {'en-US': 'Copy', 'vi-VN': 'Sao chép', 'zh-CN': '复制'},
    'Documentation': {
      'en-US': 'Documentation',
      'vi-VN': 'Tài liệu tham khảo',
      'zh-CN': '文档'
    },
    'Additional Flutter Resources': {
      'en-US': 'Additional Flutter Resources',
      'vi-VN': 'Tài liệu tham khảo khác',
      'zh-CN': '额外的 Flutter 资源'
    },
    "Don't forget to press Enter after changing the name of the color to save the changes.":
        {
      'en-US':
          "Don't forget to press Enter after changing the name of the color to save the changes.",
      'vi-VN':
          'Đừng quên nhấn Enter sau khi thay đổi tên của màu sắc để lưu lại thay đổi.',
      'zh-CN': '不要忘记在更改颜色名称后按下 Enter 键以保存更改。'
    },
    'Official Documentation Websites': {
      'en-US': 'Official Documentation Websites',
      'vi-VN': 'Website tài liệu tham khảo chính thức',
      'zh-CN': '官方文档网站'
    },
    'Flutter Docs': {
      'en-US': 'Flutter Docs',
      'vi-VN': 'Tài liệu Flutter',
      'zh-CN': 'Flutter 文档'
    },
    'Common Flutter CLI Commands': {
      'en-US': 'Common Flutter CLI Commands',
      'vi-VN': 'Câu lệnh phổ biến trong Flutter',
      'zh-CN': '常用的 Flutter CLI 命令'
    },
    'Features': {'en-US': 'Features', 'vi-VN': 'Tính năng', 'zh-CN': '功能'},
    'Additional Tools': {
      'en-US': 'Additional Tools',
      'vi-VN': 'Công cụ hỗ trợ',
      'zh-CN': '附加工具'
    },
    'Supports developers in working more efficiently when developing applications on Flutter.':
        {
      'en-US':
          'Supports developers in working more efficiently when developing applications on Flutter.',
      'vi-VN':
          'Hỗ trợ lập trình viên làm việc một cách thuận lợi hơn khi phát triển ứng dụng trên Flutter.',
      'zh-CN': '帮助开发人员在使用 Flutter 开发应用程序时更高效地工作。'
    },
    'Others': {'en-US': 'Others', 'vi-VN': 'Khác', 'zh-CN': '其他'},
    'Enable Additional Tools': {
      'en-US': 'Enable Additional Tools',
      'vi-VN': 'Bật các công cụ hỗ trợ',
      'zh-CN': '启用附加工具'
    },
    'Image Compressor': {
      'en-US': 'Image Compressor',
      'vi-VN': 'Trình nén ảnh',
      'zh-CN': '图片压缩器'
    },
    'Reduce image file sizes without quality loss.': {
      'en-US': 'Reduce image file sizes.',
      'vi-VN': 'Giảm kích thước ảnh.',
      'zh-CN': '无损压缩图像文件大小。'
    },
    'Test and debug your API endpoints.': {
      'en-US': 'Test and debug your API endpoints.',
      'vi-VN': 'Kiểm tra và thử nghiệm API của bạn.',
      'zh-CN': '测试和调试您的 API 端点。'
    },
    'Select Topic': {
      'en-US': 'Select Topic',
      'vi-VN': 'Chọn chủ đề',
      'zh-CN': '选择主题'
    },
    'All': {'en-US': 'All', 'vi-VN': 'Tất cả', 'zh-CN': '全部'},
    'See more': {'en-US': 'See more', 'vi-VN': 'Xem thêm', 'zh-CN': '查看更多'},
    'Collapse': {'en-US': 'Collapse', 'vi-VN': 'Thu gọn', 'zh-CN': '收起'},
    'Essential Tools for Flutter Developers.': {
      'en-US': 'Essential Tools for Flutter Developers.',
      'vi-VN': 'Các công cụ cần thiết cho lập trình viên Flutter',
      'zh-CN': 'Flutter 开发人员的必备工具。'
    },
    'A command-line interface for managing Flutter project.': {
      'en-US': 'A command-line interface for managing Flutter project.',
      'vi-VN': 'Danh sách các câu lệnh thông dụng trong dự án Flutter.',
      'zh-CN': '用于管理 Flutter 项目的命令行接口。'
    },
    'Fonts Preview': {
      'en-US': 'Fonts Preview',
      'vi-VN': 'Xem trước Phông chữ',
      'zh-CN': '字体预览'
    },
    'Icons Preview': {
      'en-US': 'Icons Preview',
      'vi-VN': 'Xem trước Biểu tượng',
      'zh-CN': '图标预览'
    },
    'App Icon Setter for Flutter': {
      'en-US': 'App Icon Setter for Flutter',
      'vi-VN': 'Thay đổi biểu tượng cho ứng dụng FLutter',
      'zh-CN': '适用于 Flutter 的应用程序图标设置器'
    },
    'Options': {'en-US': 'Options', 'vi-VN': 'Tùy chọn', 'zh-CN': '选项'},
    'Flutter Documentation': {
      'en-US': 'Flutter Documentation',
      'vi-VN': 'Tài liệu tham khảo cho Flutter',
      'zh-CN': 'Flutter 文档'
    },
    'Explore setup steps, API references, and example projects to accelerate your development.':
        {
      'en-US':
          'Explore setup steps, API references, and example projects to accelerate your development.',
      'vi-VN':
          'Khám phá các bước cài đặt, tài liệu API và các dự án mẫu để tăng tốc quá trình phát triển của bạn.',
      'zh-CN': '探索设置步骤、API 参考和示例项目，以加速您的开发。'
    },
    'Have feedback or suggestions for us?': {
      'en-US': 'Have feedback or suggestions for us?',
      'vi-VN': 'Bạn có góp ý hoặc đề xuất cho chúng tôi không?',
      'zh-CN': '对我们有反馈或建议吗？'
    },
    "What's new?": {
      'en-US': "What's new?",
      'vi-VN': 'Có gì mới?',
      'zh-CN': '有什么新内容？'
    },
    'Save': {'en-US': 'Save', 'vi-VN': 'Lưu', 'zh-CN': '保存'},
    'Sending your feedbacks...': {
      'en-US': 'Sending your feedbacks...',
      'vi-VN': 'Đang gửi phản hồi của bạn...',
      'zh-CN': '正在发送您的反馈...'
    },
    'Please check your internet connection or update your app if this bug persists.':
        {
      'en-US':
          'Please check your internet connection or update your app if this bug persists.',
      'vi-VN':
          'Vui lòng kiểm tra kết nối internet của bạn hoặc cập nhật ứng dụng nếu lỗi này vẫn tiếp diễn.',
      'zh-CN': '如果此问题仍然存在，请检查您的互联网连接或更新您的应用程序。'
    },
    'Report bugs or feedback about our app:': {
      'en-US': 'Report bugs or feedback about our app:',
      'vi-VN': 'Báo cáo lỗi hoặc góp ý về ứng dụng của chúng tôi:',
      'zh-CN': '报告我们应用程序的错误或反馈：'
    },

    'Feedback': {'en-US': 'Feedback', 'vi-VN': 'Góp ý', 'zh-CN': '反馈'},
    'Type your report here': {
      'en-US': 'Type your report here',
      'vi-VN': 'Nhập phản hồi của bạn tại đây',
      'zh-CN': '在此输入您的报告'
    },
    'Loading...': {
      'en-US': 'Loading...',
      'vi-VN': 'Đang tải...',
      'zh-CN': '加载中...'
    },
    'You can learn how to use Fluent UI System Icons in your Flutter app by following the documentation.':
        {
      'en-US':
          'You can learn how to use Fluent UI System Icons in your Flutter app by following the documentation.',
      'vi-VN':
          'Bạn có thể tham khảo cách sử dụng Fluent UI System Icons trong dự án của bạn bằng cách đọc qua tài liệu hướng dẫn.',
      'zh-CN': '你可以通过查看文档来学习如何在你的 Flutter 应用中使用 Fluent UI 系统图标。'
    },
    'Back': {'en-US': 'Back', 'vi-VN': 'Trở về', 'zh-CN': '返回'},
    'Feedback submitted successfully!': {
      'en-US': 'Feedback submitted successfully!',
      'vi-VN': 'Góp ý của bạn đã được gửi!',
      'zh-CN': '反馈提交成功！'
    },
    'Rate us': {'en-US': 'Rate us', 'vi-VN': 'Đánh giá', 'zh-CN': '给我们评分'},
    'Sign up': {'en-US': 'Sign up', 'vi-VN': 'Đăng ký', 'zh-CN': '注册'},
    "Don't have an account?": {
      'en-US': "Don't have an account?",
      'vi-VN': 'Bạn chưa có tài khoản?',
      'zh-CN': '没有账户？'
    },
    'Continues': {'en-US': 'Continues', 'vi-VN': 'Tiếp tục', 'zh-CN': '继续'},
    'Manage account': {
      'en-US': 'Manage account',
      'vi-VN': 'Quản lý tài khoản',
      'zh-CN': '管理账户'
    },
    'Log out and remove all local data from this device.': {
      'en-US': 'Log out and remove all local data from this device.',
      'vi-VN': 'Đăng xuất và xóa tất cả dữ liệu cục bộ khỏi thiết bị này.',
      'zh-CN': '退出并从此设备中删除所有本地数据。'
    },
    'Password': {'en-US': 'Password', 'vi-VN': 'Mật khẩu', 'zh-CN': '密码'},
    'The quick brown fox jumps over the lazy dog.': {
      'en-US': 'The quick brown fox jumps over the lazy dog.',
      'vi-VN': 'Con cáo nâu nhanh nhẹn nhảy qua con chó lười biếng.',
      'zh-CN': '敏捷的棕色狐狸跳过懒狗。'
    },
    "You're not connected": {
      'en-US': "You're not connected",
      'vi-VN': 'Không có kết nối mạng',
      'zh-CN': '您未连接网络'
    },
    "We'd love to hear your feedback!": {
      'en-US': "We'd love to hear your feedback!",
      'vi-VN': 'Chúng tôi rất muốn nghe phản hồi của bạn!',
      'zh-CN': '我们很想听到您的反馈！'
    },
    'Give feedbacks': {
      'en-US': 'Give feedbacks',
      'vi-VN': 'Gửi phản hồi',
      'zh-CN': '提交反馈'
    },
    'Later': {'en-US': 'Later', 'vi-VN': 'Để sau', 'zh-CN': '稍后'},
    'SubSentenceInNoInternetBubble': {
      'en-US':
          'No internet. You are not connected to the internet, or your internet connection is experiencing an issue.',
      'vi-VN':
          'Không có mạng. Bạn đang mất kết nối mạng hoặc mạng của bạn đang gặp sự cố.',
      'zh-CN': '没有网络连接。您未连接到网络，或网络连接出现问题。'
    },
    'Cancel': {'en-US': 'Cancel', 'vi-VN': 'Hủy bỏ', 'zh-CN': '取消'},
    'All rights reserved.': {
      'en-US': 'All rights reserved.',
      'vi-VN': 'Mọi quyền được bảo lưu.',
      'zh-CN': '版权所有。'
    },
    'Available at': {
      'en-US': 'Available at',
      'vi-VN': 'Đã có mặt ở',
      'zh-CN': '可用于'
    },
    "Oops, it's a ghost town in here!": {
      'en-US': "Oops, it's a ghost town in here!",
      'vi-VN': 'Oops, có một thành phố ma ở đây!',
      'zh-CN': '哎呀，这里是个鬼城！'
    },
    'Press back again to exit': {
      'en-US': 'Press back again to exit',
      'vi-VN': 'Bấm trở lại lần nữa để thoát',
      'zh-CN': '再次按返回键退出'
    },
    'About': {'en-US': 'About', 'vi-VN': 'Thông tin', 'zh-CN': '关于'},
    'No Internet': {
      'en-US': 'No Internet',
      'vi-VN': 'Không có kết nối Internet',
      'zh-CN': '无互联网连接'
    },
    'No internet connection.': {
      'en-US': 'No internet connection.',
      'vi-VN': 'Không có kết nối mạng.',
      'zh-CN': '没有网络连接。'
    },
    'Permission Required': {
      'en-US': 'Permission Required',
      'vi-VN': 'Yêu cầu quyền',
      'zh-CN': '需要权限'
    },
    'You not connected to the internet or the application having trouble while trying to connect to the network.':
        {
      'en-US':
          'You not connected to the internet or the application having trouble while trying to connect to the network.',
      'vi-VN':
          'Bạn không kết nối với Internet hoặc ứng dụng gặp sự cố khi cố gắng kết nối với mạng.',
      'zh-CN': '您未连接到互联网或应用程序在尝试连接网络时遇到问题。'
    },

    'Flutter Toolkit': {
      'en-US': 'Flutter Toolkit',
      'vi-VN': 'Flutter Toolkit',
      'zh-CN': 'Flutter 工具包'
    },
    'Storage permission denied.': {
      'en-US': 'Storage permission denied.',
      'vi-VN': 'Quyền truy cập bộ nhớ bị từ chối.',
      'zh-CN': '存储权限被拒绝。'
    },
    'Instructions': {
      'en-US': 'Instructions',
      'vi-VN': 'Hướng dẫn',
      'zh-CN': '说明'
    },
    'Restore the settings to their default as when the application was first installed.':
        {
      'en-US':
          'Restore the settings to their default as when the application was first installed.',
      'vi-VN':
          'Khôi phục các thiết lập về cài đặt mặc định như lúc ứng dụng mới được cài đặt lần đầu.',
      'zh-CN': '将设置恢复为应用程序首次安装时的默认值。'
    },
    'Default settings are restored': {
      'en-US': 'Default settings are restored',
      'vi-VN': 'Đã khôi mục cài đặt về mặc định',
      'zh-CN': '默认设置已恢复'
    },
    'Reset to default settings': {
      'en-US': 'Reset to default settings',
      'vi-VN': 'Khôi phục cài đặt gốc',
      'zh-CN': '恢复默认设置'
    },
    'Copied to clipboard': {
      'en-US': 'Copied to clipboard',
      'vi-VN': 'Đã sao chép vào bộ nhớ tạm',
      'zh-CN': '已复制到剪贴板'
    },
    'Licenses': {'en-US': 'Licenses', 'vi-VN': 'Giấy phép', 'zh-CN': '许可证'},
    'DescriptionTextForLicenses': {
      'en-US':
          'Our app utilizes various open-source libraries. Here, you can view the licenses and attributions for the third-party software integrated into our product.',
      'vi-VN':
          'Ứng dụng của chúng tôi sử dụng nhiều thư viện mã nguồn mở. Tại đây, bạn có thể xem các giấy phép và sự ghi nhận cho phần mềm của bên thứ ba được tích hợp vào sản phẩm của chúng tôi.',
      'zh-CN': '我们的应用程序使用了各种开源库。在这里，您可以查看集成到我们产品中的第三方软件的许可证和归属。'
    },
    'Release notes': {
      'en-US': 'Release notes',
      'vi-VN': 'Thông tin phiên bản',
      'zh-CN': '发布说明'
    },
    'System default': {
      'en-US': 'System default',
      'vi-VN': 'Tự động',
      'zh-CN': '系统默认'
    },
    'English': {'en-US': 'English', 'vi-VN': 'English', 'zh-CN': '英语'},
    'Tiếng Việt': {
      'en-US': 'Tiếng Việt',
      'vi-VN': 'Tiếng Việt',
      'zh-CN': '越南语'
    },
    'Use System Theme': {
      'en-US': 'Use System Theme',
      'vi-VN': 'Sử dụng chủ đề hệ thống',
      'zh-CN': '使用系统主题'
    },
    'Accent color': {
      'en-US': 'Accent color',
      'vi-VN': 'Tông màu',
      'zh-CN': '强调色'
    },
    'DesciptionTextForPrivacyPolicy': {
      'en-US':
          'We hold your privacy in high regard and assure you that your personal data will not be disclosed to any third party.',
      'vi-VN':
          'Chúng tôi tôn trọng quyền riêng tư của bạn và cam kết dữ liệu cá nhân của bạn sẽ không được chia sẻ với bất cứ bên thứ ba nào cả.',
      'zh-CN': '我们高度重视您的隐私，并向您保证您的个人数据不会被透露给任何第三方。'
    },
    'For more information about our privacy policy, please visit:': {
      'en-US': 'For more information about our privacy policy, please visit:',
      'vi-VN':
          'Để biết thêm chi tiết về điều khoản riêng tư, vui lòng truy cập:',
      'zh-CN': '有关隐私政策的更多信息，请访问：'
    },
    'Privacy Policy': {
      'en-US': 'Privacy Policy',
      'vi-VN': 'Điều khoản',
      'zh-CN': '隐私政策'
    },
    'Settings': {'en-US': 'Settings', 'vi-VN': 'Cài đặt', 'zh-CN': '设置'},
    '* The changes will become effective the next time you open the app.': {
      'en-US':
          'Note: The changes will become effective the next time you open the app.',
      'vi-VN':
          'Ghi chú: Những thay đổi sẽ có hiệu lực vào lần tiếp theo bạn mở ứng dụng.',
      'zh-CN': '注意：更改将在您下次打开应用程序时生效。'
    },
    'Common': {'en-US': 'Common', 'vi-VN': 'Cài đặt chung', 'zh-CN': '通用'},
    'Language': {'en-US': 'Language', 'vi-VN': 'Ngôn ngữ', 'zh-CN': '语言'},
    'Select a language': {
      'en-US': 'Select a language',
      'vi-VN': 'Chọn một ngôn ngữ',
      'zh-CN': '选择一种语言'
    },
    'Log out': {'en-US': 'Log out', 'vi-VN': 'Đăng xuất', 'zh-CN': '登出'},
    'Account': {'en-US': 'Account', 'vi-VN': 'Tài khoản', 'zh-CN': '账户'},
    'User': {'en-US': 'User', 'vi-VN': 'Người dùng', 'zh-CN': '用户'},
    'Light mode': {'en-US': 'Light', 'vi-VN': 'Sáng', 'zh-CN': '浅色模式'},
    'Dark mode': {'en-US': 'Dark', 'vi-VN': 'Tối', 'zh-CN': '深色模式'},
    'Adaptive': {'en-US': 'Adaptive', 'vi-VN': 'Tự động', 'zh-CN': '自适应'},
    'Theme': {'en-US': 'Theme', 'vi-VN': 'Giao diện', 'zh-CN': '主题'},
    'Customize': {'en-US': 'Customize', 'vi-VN': 'Tùy chỉnh', 'zh-CN': '自定义'},
    'Preferences': {
      'en-US': 'Preferences',
      'vi-VN': 'Tùy chỉnh',
      'zh-CN': '偏好设置'
    },
    'Response': {'en-US': 'Response', 'vi-VN': 'Phản hồi', 'zh-CN': '响应'},
    'Status': {'en-US': 'Status', 'vi-VN': 'Trạng thái', 'zh-CN': '状态'},
    'OK': {'en-US': 'OK', 'vi-VN': 'Đồng ý', 'zh-CN': '确定'},
    'Fonts': {'en-US': 'Fonts', 'vi-VN': 'Phông chữ', 'zh-CN': '字体'},
    'Image Compress': {
      'en-US': 'Image Compress',
      'vi-VN': 'Nén ảnh',
      'zh-CN': '图像压缩'
    },
    'Icons': {'en-US': 'Icons', 'vi-VN': 'Biểu tượng', 'zh-CN': '图标'},
    'Image': {'en-US': 'Image', 'vi-VN': 'Hình ảnh', 'zh-CN': '图片'},
    'Dashboard': {'en-US': 'Dashboard', 'vi-VN': 'Trang chủ', 'zh-CN': '仪表盘'},
    'App Icon Setter': {
      'en-US': 'App Icon Setter',
      'vi-VN': 'Trình đặt biểu tượng ứng dụng',
      'zh-CN': '适用于 Flutter 的应用程序图标设置器'
    },
    'App Icon Setter for Flutter Project': {
      'en-US': 'App Icon Setter for Flutter Program',
      'vi-VN': 'Trình đặt biểu tượng cho ứng dụng Flutter',
      'zh-CN': '适用于 Flutter 的应用程序图标设置器'
    },

    'Color Picker': {
      'en-US': 'Color Picker',
      'vi-VN': 'Chọn màu',
      'zh-CN': '颜色选择器'
    },
    'Font Previewer': {
      'en-US': 'Font Previewer',
      'vi-VN': 'Màn hình xem trước phông chữ',
      'zh-CN': '字体预览器'
    },
    'For implementation steps, visit:': {
      'en-US': 'For implementation steps, visit:',
      'vi-VN': 'Để biết các bước triển khai, hãy truy cập:',
      'zh-CN': '有关实现步骤，请访问：'
    },
    'Google Fonts on pub.dev': {
      'en-US': 'Google Fonts on pub.dev',
      'vi-VN': 'Google Fonts trên pub.dev',
      'zh-CN': 'pub.dev 上的 Google 字体'
    },
    'You can learn how to use Google Fonts in your Flutter app by following the documentation.':
        {
      'en-US':
          'You can learn how to use Google Fonts in your Flutter app by following the documentation.',
      'vi-VN':
          'Bạn có thể tìm hiểu cách sử dụng Google Fonts trong ứng dụng Flutter của mình bằng cách làm theo tài liệu.',
      'zh-CN': '您可以通过遵循文档来学习如何在您的 Flutter 应用中使用 Google 字体。'
    },
    'Image Compression': {
      'en-US': 'Image Compression',
      'vi-VN': 'Nén hình ảnh',
      'zh-CN': '图像压缩'
    },
    'Step 1: Pick Images to Compress': {
      'en-US': 'Step 1: Pick Images to Compress',
      'vi-VN': 'Bước 1: Chọn hình ảnh để nén',
      'zh-CN': '步骤 1：选择要压缩的图像'
    },
    'You can select multiple JPG or PNG images to compress. Click the button below to start.':
        {
      'en-US':
          'You can select multiple JPG or PNG images to compress. Click the button below to start.',
      'vi-VN':
          'Bạn có thể chọn nhiều hình ảnh JPG hoặc PNG để nén. Nhấn nút bên dưới để bắt đầu.',
      'zh-CN': '您可以选择多个 JPG 或 PNG 图像进行压缩。单击下面的按钮开始。'
    },
    'Pick Images': {
      'en-US': 'Pick Images',
      'vi-VN': 'Chọn hình ảnh',
      'zh-CN': '选择图像'
    },
    'Selected Images': {
      'en-US': 'Selected Images',
      'vi-VN': 'Hình ảnh đã chọn',
      'zh-CN': '已选图像'
    },
    'No images selected.': {
      'en-US': 'No images selected.',
      'vi-VN': 'Chưa chọn hình ảnh nào.',
      'zh-CN': '未选择图像。'
    },
    'Step 2: Adjust Quality of Compression': {
      'en-US': 'Step 2: Adjust Quality of Compression',
      'vi-VN': 'Bước 2: Điều chỉnh chất lượng nén',
      'zh-CN': '步骤 2：调整压缩质量'
    },
    'Use the slider below to set the quality for compression (0 = low quality, 100 = high quality).':
        {
      'en-US':
          'Use the slider below to set the quality for compression (0 = low quality, 100 = high quality).',
      'vi-VN':
          'Sử dụng thanh trượt bên dưới để đặt chất lượng nén (0 = chất lượng thấp, 100 = chất lượng cao).',
      'zh-CN': '使用下面的滑块设置压缩质量（0 = 低质量，100 = 高质量）。'
    },
    'Quality:': {'en-US': 'Quality:', 'vi-VN': 'Chất lượng:', 'zh-CN': '质量：'},
    'Step 3: Choose Output Directory': {
      'en-US': 'Step 3: Choose Output Directory',
      'vi-VN': 'Bước 3: Chọn thư mục đầu ra',
      'zh-CN': '步骤 3：选择输出目录'
    },
    'Select Output Directory': {
      'en-US': 'Select Output Directory',
      'vi-VN': 'Chọn thư mục đầu ra',
      'zh-CN': '选择输出目录'
    },

    'Output Directory: ': {
      'en-US': 'Output Directory: ',
      'vi-VN': 'Thư mục đầu ra: ',
      'zh-CN': '输出目录：'
    },
    'Step 4: Compress Images': {
      'en-US': 'Step 4: Compress Images',
      'vi-VN': 'Bước 4: Nén hình ảnh',
      'zh-CN': '步骤 4：压缩图像'
    },
    'Compress Images': {
      'en-US': 'Compress Images',
      'vi-VN': 'Nén hình ảnh',
      'zh-CN': '压缩图像'
    },
    'Compression completed!': {
      'en-US': 'Compression completed!',
      'vi-VN': 'Nén hoàn tất!',
      'zh-CN': '压缩完成！'
    },
    'JSON Formatter': {
      'en-US': 'JSON Formatter',
      'vi-VN': 'Định dạng JSON',
      'zh-CN': 'JSON 格式化工具'
    },
    'Enter your JSON below and click \'Format JSON\' to prettify it. Make sure it\'s valid JSON format.':
        {
      'en-US':
          'Enter your JSON below and click \'Format JSON\' to prettify it. Make sure it\'s valid JSON format.',
      'vi-VN':
          'Nhập JSON của bạn bên dưới và nhấn \'Định dạng JSON\' để làm đẹp nó. Đảm bảo rằng đó là định dạng JSON hợp lệ.',
      'zh-CN': '在下方输入您的 JSON 并点击“格式化 JSON”以美化它。确保它是有效的 JSON 格式。'
    },
    'Enter JSON': {
      'en-US': 'Enter JSON',
      'vi-VN': 'Nhập JSON',
      'zh-CN': '输入 JSON'
    },
    'Format JSON': {
      'en-US': 'Format JSON',
      'vi-VN': 'Định dạng JSON',
      'zh-CN': '格式化 JSON'
    },
    'Formatted JSON will appear here': {
      'en-US': 'Formatted JSON will appear here',
      'vi-VN': 'JSON đã định dạng sẽ xuất hiện ở đây',
      'zh-CN': '格式化的 JSON 将显示在此处'
    },
    'action': {'en-US': 'action', 'vi-VN': 'hành động', 'zh-CN': '操作'},
    'alert': {'en-US': 'alert', 'vi-VN': 'cảnh báo', 'zh-CN': '警报'},
    'av': {'en-US': 'av', 'vi-VN': 'nghe nhìn', 'zh-CN': '视听'},
    'communication': {
      'en-US': 'communication',
      'vi-VN': 'giao tiếp',
      'zh-CN': '通信'
    },
    'content': {'en-US': 'content', 'vi-VN': 'nội dung', 'zh-CN': '内容'},
    'device': {'en-US': 'device', 'vi-VN': 'thiết bị', 'zh-CN': '设备'},
    'editor': {'en-US': 'editor', 'vi-VN': 'trình chỉnh sửa', 'zh-CN': '编辑器'},
    'file': {'en-US': 'file', 'vi-VN': 'tệp', 'zh-CN': '文件'},
    'hardware': {'en-US': 'hardware', 'vi-VN': 'phần cứng', 'zh-CN': '硬件'},
    'home': {'en-US': 'home', 'vi-VN': 'trang chủ', 'zh-CN': '主页'},
    'image': {'en-US': 'image', 'vi-VN': 'hình ảnh', 'zh-CN': '图像'},
    'maps': {'en-US': 'maps', 'vi-VN': 'bản đồ', 'zh-CN': '地图'},
    'navigation': {'en-US': 'navigation', 'vi-VN': 'dẫn đường', 'zh-CN': '导航'},
    'notification': {
      'en-US': 'notification',
      'vi-VN': 'thông báo',
      'zh-CN': '通知'
    },
    'places': {'en-US': 'places', 'vi-VN': 'địa điểm', 'zh-CN': '地点'},
    'search': {'en-US': 'search', 'vi-VN': 'tìm kiếm', 'zh-CN': '搜索'},
    'social': {'en-US': 'social', 'vi-VN': 'xã hội', 'zh-CN': '社交'},
    'toggle': {'en-US': 'toggle', 'vi-VN': 'bật/tắt', 'zh-CN': '切换'},
    'API Testing': {
      'en-US': 'API Testing',
      'vi-VN': 'Kiểm thử API',
      'zh-CN': 'API 测试'
    },
    'API Testing Tool': {
      'en-US': 'API Testing Tool',
      'vi-VN': 'Công cụ kiểm thử API',
      'zh-CN': 'API 测试工具'
    },

    "This API Testing Tool allows you to perform basic HTTP requests like GET, POST, and DELETE. Enter a URL to test the response and see the status code and data returned by the server.":
        {
      "en-US":
          "This API Testing Tool allows you to perform basic HTTP requests like GET, POST, and DELETE. Enter a URL to test the response and see the status code and data returned by the server.",
      "vi-VN":
          "Công cụ kiểm tra API này cho phép bạn thực hiện các yêu cầu HTTP cơ bản như GET, POST và DELETE. Nhập một URL để kiểm tra phản hồi và xem mã trạng thái cũng như dữ liệu được trả về bởi máy chủ.",
      "zh-CN":
          "此 API 测试工具允许您执行基本的 HTTP 请求，如 GET、POST 和 DELETE。输入一个 URL 以测试响应，并查看服务器返回的状态代码和数据。"
    },
    "Choose your preferred font style and size.": {
      "en-US": "Choose your preferred font style and size.",
      "vi-VN": "Chọn kiểu và kích thước phông chữ ưa thích của bạn",
      "zh-CN": "选择您偏好的字体样式和大小。"
    },
    "Pick the perfect color for your project.": {
      "en-US": "Pick the perfect color for your project.",
      "vi-VN": "Chọn màu sắc hoàn hảo cho dự án của bạn",
      "zh-CN": "为您的项目选择完美的颜色。"
    },
    "Browse and select from a variety of icons.": {
      "en-US": "Browse and select from a variety of icons.",
      "vi-VN": "Duyệt và chọn từ nhiều biểu tượng khác nhau",
      "zh-CN": "浏览并从多种图标中选择。"
    },
    "Format your JSON data for better readability.": {
      "en-US": "Format your JSON data for better readability.",
      "vi-VN": "Định dạng dữ liệu JSON của bạn để dễ đọc hơn",
      "zh-CN": "格式化您的 JSON 数据以提高可读性。"
    },
    "Create custom icons tailored to your needs.": {
      "en-US": "Create custom icons tailored to your needs.",
      "vi-VN": "Tạo các biểu tượng tùy chỉnh theo nhu cầu của bạn",
      "zh-CN": "根据您的需求创建自定义图标。"
    },
    "Reduce image file sizes without sacrificing quality.": {
      "en-US": "Reduce image file sizes without sacrificing quality.",
      "vi-VN": "Giảm kích thước tệp hình ảnh mà không làm giảm chất lượng",
      "zh-CN": "在不牺牲质量的情况下减少图像文件大小。"
    },
    "Test and debug your API endpoints efficiently.": {
      "en-US": "Test and debug your API endpoints efficiently.",
      "vi-VN": "Kiểm tra và gỡ lỗi các điểm cuối API của bạn một cách hiệu quả",
      "zh-CN": "高效测试和调试您的 API 端点。"
    },
    "Step 1: Select a PNG Image": {
      "en-US": "Step 1: Select a PNG Image",
      "vi-VN": "Bước 1: Chọn một hình ảnh PNG",
      "zh-CN": "步骤 1：选择一个 PNG 图像"
    },
    "Choose a PNG image that will be used to generate icons for various platforms. The image should be clear and high-resolution.":
        {
      "en-US":
          "Choose a PNG image that will be used to generate icons for various platforms. The image should be clear and high-resolution.",
      "vi-VN":
          "Chọn một hình ảnh PNG sẽ được sử dụng để tạo biểu tượng cho nhiều nền tảng khác nhau. Hình ảnh cần rõ ràng và có độ phân giải cao.",
      "zh-CN": "选择一个 PNG 图像，用于为各种平台生成图标。图像应清晰且分辨率高。"
    },
    "Select PNG Image": {
      "en-US": "Select PNG Image",
      "vi-VN": "Chọn hình ảnh PNG",
      "zh-CN": "选择 PNG 图像"
    },
    "Change Image": {
      "en-US": "Change Image",
      "vi-VN": "Thay đổi hình ảnh",
      "zh-CN": "更改图像"
    },
    "Step 2: Select the Flutter Project Location": {
      "en-US": "Step 2: Select the Flutter Project Location",
      "vi-VN": "Bước 2: Chọn vị trí của dự án Flutter",
      "zh-CN": "步骤 2：选择 Flutter 项目位置"
    },
    "Pick the root directory of your Flutter project. Icons will be generated and placed in the appropriate folders for Android, iOS, macOS, Windows, and Web platforms.":
        {
      "en-US":
          "Pick the root directory of your Flutter project. Icons will be generated and placed in the appropriate folders for Android, iOS, macOS, Windows, and Web platforms.",
      "vi-VN":
          "Chọn thư mục gốc của dự án Flutter của bạn. Các biểu tượng sẽ được tạo và đặt vào các thư mục phù hợp cho các nền tảng Android, iOS, macOS, Windows và Web.",
      "zh-CN":
          "选择 Flutter 项目的根目录。图标将生成并放置在 Android、iOS、macOS、Windows 和 Web 平台的相应文件夹中。"
    },
    "Select Flutter Project": {
      "en-US": "Select Flutter Project",
      "vi-VN": "Chọn dự án Flutter",
      "zh-CN": "选择 Flutter 项目"
    },
    "Change Project Path": {
      "en-US": "Change Project Path",
      "vi-VN": "Thay đổi đường dẫn dự án",
      "zh-CN": "更改项目路径"
    },
    "Project Path:": {
      "en-US": "Project Path:",
      "vi-VN": "Đường dẫn dự án:",
      "zh-CN": "项目路径:"
    },
    "Step 3: Generate Icons": {
      "en-US": "Step 3: Generate Icons",
      "vi-VN": "Bước 3: Tạo biểu tượng",
      "zh-CN": "步骤 3：生成图标"
    },
    "Click the \"Generate Icons\" button to create icons for each platform. Make sure you have selected a valid PNG image and Flutter project location before proceeding.":
        {
      "en-US":
          "Click the \"Generate Icons\" button to create icons for each platform. Make sure you have selected a valid PNG image and Flutter project location before proceeding.",
      "vi-VN":
          "Nhấn nút \"Tạo biểu tượng\" để tạo biểu tượng cho từng nền tảng. Hãy chắc chắn rằng bạn đã chọn một hình ảnh PNG hợp lệ và vị trí dự án Flutter trước khi tiếp tục.",
      "zh-CN": "点击“生成图标”按钮为每个平台创建图标。在继续之前，请确保已选择有效的 PNG 图像和 Flutter 项目位置。"
    },
    "Generate Icons": {
      "en-US": "Generate Icons",
      "vi-VN": "Tạo biểu tượng",
      "zh-CN": "生成图标"
    },
    "Icons generated successfully!": {
      "en-US": "Icons generated successfully!",
      "vi-VN": "Biểu tượng đã được tạo thành công!",
      "zh-CN": "图标生成成功！"
    },
    "Error:": {"en-US": "Error:", "vi-VN": "Lỗi:", "zh-CN": "错误："},
    "Add this color to Collection": {
      "en-US": "Add this color to Collection",
      "vi-VN": "Thêm màu vào này bộ sưu tập",
      "zh-CN": "将此颜色添加到收藏中"
    },
    "Label": {"en-US": "Label", "vi-VN": "Nhãn", "zh-CN": "标签"},
    "Overview": {"en-US": "Overview", "vi-VN": "Tổng quan", "zh-CN": "概览"},
    "Color Collection": {
      "en-US": "Color Collection",
      "vi-VN": "Bộ sưu tập",
      "zh-CN": "颜色收藏"
    },
    "The following folders will be changed.": {
      "en-US": "The following folders will be changed.",
      "vi-VN": "Các thư mục sau sẽ được thay đổi.",
      "zh-CN": "以下文件夹将被更改。"
    },
    'Help Us Improve': {
      'en-US': 'Help Us Improve',
      'vi-VN': 'Phản hồi',
      'zh-CN': '帮助我们改进'
    },
    'Flutter Learning Roadmap': {
      'en-US': 'Flutter Learning Roadmap',
      'vi-VN': 'Lộ Trình Học Flutter',
      'zh-CN': 'Flutter学习路线图'
    },
    'A structured guide to help you advance from beginner to expert in Flutter.':
        {
      'en-US':
          'A structured guide to help you advance from beginner to expert in Flutter.',
      'vi-VN':
          'Một hướng dẫn có cấu trúc giúp bạn tiến bộ từ người mới bắt đầu đến chuyên gia trong Flutter.',
      'zh-CN': '一份结构化的指南，帮助您从Flutter初学者进阶到专家。',
    },
    'Refer to https://github.com/olexale/flutter_roadmap for the latest version and links.':
        {
      'en-US':
          'Refer to https://github.com/olexale/flutter_roadmap for the latest version and links.',
      'vi-VN':
          'Tham khảo https://github.com/olexale/flutter_roadmap để có phiên bản và liên kết mới nhất.',
      'zh-CN': '请参阅 https://github.com/olexale/flutter_roadmap 以获取最新版本和链接。',
    },
    'introductionRoadmap': {
      'en-US':
          'This guide will help you progress from a beginner to an advanced Flutter developer. It outlines key concepts, tools, and best practices you need to master, including Dart programming, Flutter widgets, UI design, and state management. Follow this roadmap to build a solid foundation in Flutter and start developing powerful mobile applications.',
      'vi-VN':
          'Hướng dẫn này sẽ giúp bạn tiến bộ từ người mới bắt đầu đến nhà phát triển Flutter nâng cao. Nó bao gồm các khái niệm chính, công cụ và thực tiễn tốt nhất mà bạn cần nắm vững, bao gồm lập trình Dart, widget Flutter, thiết kế giao diện người dùng và quản lý trạng thái. Hãy theo dõi lộ trình này để xây dựng nền tảng vững chắc trong Flutter và bắt đầu phát triển các ứng dụng di động mạnh mẽ.',
      'zh-CN':
          '本指南将帮助您从初学者进阶到高级Flutter开发者。它概述了您需要掌握的关键概念、工具和最佳实践，包括Dart编程、Flutter小部件、UI设计和状态管理。遵循此路线图，建立坚实的Flutter基础，开始开发强大的移动应用程序。',
    },
    'Basics': {
      'en-US': 'Basics',
      'vi-VN': 'Cơ bản',
      'zh-CN': '基础',
    },
    'Getting Deeper': {
      'en-US': 'Getting Deeper',
      'vi-VN': 'Đi sâu hơn',
      'zh-CN': '深入学习',
    },
    'Report Issues': {
      'en-US': 'Report Issues',
      'vi-VN': 'Báo cáo sự cố',
      'zh-CN': '报告问题'
    },
    'Almost there': {
      'en-US': 'Almost there',
      'vi-VN': 'Gần xong',
      'zh-CN': '快完成了',
    },
    'The End': {
      'en-US': 'The End',
      'vi-VN': 'Hoàn thành',
      'zh-CN': '结束',
    },
    'Must have': {
      'en-US': 'Must have',
      'vi-VN': 'Cần phải có',
      'zh-CN': '必备',
    },
    'Nice to have': {
      'en-US': 'Nice to have',
      'vi-VN': 'Nên có',
      'zh-CN': '锦上添花',
    },
    'Optional': {
      'en-US': 'Optional',
      'vi-VN': 'Tùy chọn',
      'zh-CN': '可选',
    },
    'Resources': {
      'en-US': 'Resources',
      'vi-VN': 'Tài nguyên',
      'zh-CN': '资源',
    },
    'Importance': {
      'en-US': 'Importance',
      'vi-VN': 'Tầm quan trọng',
      'zh-CN': '重要性',
    },
    'Development Fund': {
      'en-US': 'Development Fund',
      'vi-VN': 'Quỹ phát triển',
      'zh-CN': '发展基金'
    },
    'Join the 2%': {
      'en-US': 'Join the 2%',
      'vi-VN': 'Tham gia vào 2%',
      'zh-CN': '加入2%'
    },
    'description-donation': {
      'en-US':
          'When 2 percent of users donate, more developers will be supported to work on UI and tools. Free and Open Source for everyone, forever.',
      'vi-VN':
          'Khi 2 phần trăm người dùng quyên góp, nhiều nhà phát triển sẽ được hỗ trợ để làm việc, cải thiện giao diện và phát triển thêm công cụ. Ứng dụng miễn phí mãi mãi và mã nguồn mở dành cho mọi người.',
      'zh-CN': '当2%的用户捐款时，会有更多的开发人员得到支持来开发界面和工具。永远为每个人免费和开源。'
    },
    'or': {'en-US': 'or', 'vi-VN': 'hoặc', 'zh-CN': '或'},
    'cup of coffee': {
      'en-US': 'cup of coffee',
      'vi-VN': 'cốc cà phê',
      'zh-CN': '杯咖啡'
    },
    'cups of coffee': {
      'en-US': 'cups of coffee',
      'vi-VN': 'cốc cà phê',
      'zh-CN': '杯咖啡'
    },
    'A generous soul': {
      'en-US': 'A generous soul',
      'vi-VN': 'Một tâm hồn rộng lượng',
      'zh-CN': '慷慨的灵魂'
    },
    'Donate': {'en-US': 'Donate', 'vi-VN': 'Quyên góp', 'zh-CN': '捐款'},
    'Total amount': {
      'en-US': 'Total amount',
      'vi-VN': 'Tổng số tiền',
      'zh-CN': '总金额'
    },
    'personal-data-notice': {
      'en-US':
          'To ensure data safety. Your settings and data are stored locally and are not shared with any third parties. Please manually restore your settings and personal data when switching to a new device.',
      'vi-VN':
          'Để đảm bảo an toàn dữ liệu. Những cài đặt và dữ liệu của bạn được lưu trữ cục bộ và không được chia sẻ với bất kì bên thứ 3 nào. Vui lòng khôi phục những cài đặt và dữ liệu cá nhân bằng phương pháp thủ công khi chuyển sang dùng ở một thiết bị mới.',
      'zh-CN': '为了确保数据安全。您的设置和数据会存储在本地，不会与任何第三方共享。请在切换到新设备时手动恢复您的设置和个人数据。'
    },
    'Restore from a backup file': {
      'en-US': 'Restore from a backup file',
      'vi-VN': 'Khôi phục từ tệp sao lưu',
      'zh-CN': '从备份文件恢复'
    },
    'Restore': {'en-US': 'Restore', 'vi-VN': 'Khôi phục', 'zh-CN': '恢复'},
    'Search': {'en-US': 'Search', 'vi-VN': 'Tìm kiếm', 'zh-CN': '搜索'},
    'Create a new backup': {
      'en-US': 'Create a new backup',
      'vi-VN': 'Tạo bản sao lưu mới',
      'zh-CN': '创建新备份'
    },
    'Error picking files:': {
      'en-US': 'Error picking files:',
      'vi-VN': 'Lỗi khi chọn tệp:',
      'zh-CN': '选择文件时出错:'
    },
    'Backup files is copied to Application Support Directory.': {
      'en-US': 'Backup files is copied to Application Support Directory.',
      'vi-VN': 'Các tệp sao lưu đã được sao chép vào Thư mục Hỗ trợ Ứng dụng.',
      'zh-CN': '备份文件已复制到应用程序支持目录。'
    },
    'Backup files is not valid.': {
      'en-US': 'Backup files is not valid.',
      'vi-VN': 'Các tệp sao lưu không hợp lệ.',
      'zh-CN': '备份文件无效。'
    },
    'Backup files are saved to selected directory': {
      'en-US': 'Backup files are saved to selected directory',
      'vi-VN': 'Các tệp sao lưu đã được lưu vào thư mục được chọn',
      'zh-CN': '备份文件已保存到选定目录'
    },
    'Error picking directory or copying files:': {
      'en-US': 'Error picking directory or copying files:',
      'vi-VN': 'Lỗi khi chọn thư mục hoặc sao chép tệp:',
      'zh-CN': '选择目录或复制文件时出错：'
    },
    'How do I remove the unwanted white border around my app icon on Android devices?':
        {
      'en-US':
          'How do I remove the unwanted white border around my app icon on Android devices?',
      'vi-VN':
          'Làm cách nào để loại bỏ viền trắng không mong muốn xung quanh biểu tượng ứng dụng trên thiết bị Android?',
      'zh-CN': '如何去除Android设备上应用图标周围不必要的白色边框？'
    },
    'View and manage SQLite and Hive databases in your Flutter projects.': {
      'en-US':
          'View and manage SQLite and Hive databases in your Flutter projects.',
      'vi-VN':
          'Xem và quản lý cơ sở dữ liệu SQLite và Hive trong các dự án Flutter của bạn.',
      'zh-CN': '在您的 Flutter 项目中查看和管理 SQLite 和 Hive 数据库。',
    },
    'Database Explorer': {
      'en-US': 'Database Explorer',
      'vi-VN': 'Trình khám phá cơ sở dữ liệu',
      'zh-CN': '数据库资源管理器',
    },
    'Search...': {
      'en-US': 'Search...',
      'vi-VN': 'Tìm kiếm...',
      'zh-CN': '搜索...',
    },
    'Explorer': {
      'en-US': 'Explorer',
      'vi-VN': 'Trình khám phá',
      'zh-CN': '资源管理器',
    },
    'Query': {
      'en-US': 'Query',
      'vi-VN': 'Truy vấn',
      'zh-CN': '查询',
    },
    'Database Type:': {
      'en-US': 'Database Type:',
      'vi-VN': 'Loại cơ sở dữ liệu:',
      'zh-CN': '数据库类型：',
    },
    'Database Path': {
      'en-US': 'Database Path',
      'vi-VN': 'Đường dẫn cơ sở dữ liệu',
      'zh-CN': '数据库路径',
    },
    'Load': {
      'en-US': 'Load',
      'vi-VN': 'Tải',
      'zh-CN': '加载',
    },
    'SQL Query': {
      'en-US': 'SQL Query',
      'vi-VN': 'Truy vấn SQL',
      'zh-CN': 'SQL 查询',
    },
    'Execute Query': {
      'en-US': 'Execute Query',
      'vi-VN': 'Thực thi truy vấn',
      'zh-CN': '执行查询',
    },
    'Load a database first': {
      'en-US': 'Load a database first',
      'vi-VN': 'Tải một cơ sở dữ liệu trước',
      'zh-CN': '请先加载数据库',
    },
    'Enter a SQL query and execute it to see results': {
      'en-US': 'Enter a SQL query and execute it to see results',
      'vi-VN': 'Nhập truy vấn SQL và thực thi để xem kết quả',
      'zh-CN': '输入 SQL 查询并执行以查看结果',
    },
    'Select a table to view its data': {
      'en-US': 'Select a table to view its data',
      'vi-VN': 'Chọn một bảng để xem dữ liệu',
      'zh-CN': '选择一个表以查看其数据',
    },
    'Select a table': {
      'en-US': 'Select a table',
      'vi-VN': 'Chọn một bảng',
      'zh-CN': '选择一个表',
    },
    'Copy row': {
      'en-US': 'Copy row',
      'vi-VN': 'Sao chép hàng',
      'zh-CN': '复制行',
    },
    'Load a database to see available tables': {
      'en-US': 'Load a database to see available tables',
      'vi-VN': 'Tải cơ sở dữ liệu để xem các bảng có sẵn',
      'zh-CN': '加载数据库以查看可用的表',
    },
    'Only for small databases': {
      'en-US': 'Only for small databases',
      'vi-VN': 'Chỉ dành cho cơ sở dữ liệu nhỏ',
      'zh-CN': '仅适用于小型数据库',
    },

    'Share your feedback on how we can improve or let us know what you enjoy about our app.':
        {
      'en-US':
          'Share your feedback on how we can improve or let us know what you enjoy about our app.',
      'vi-VN':
          'Chia sẻ phản hồi của bạn về cách chúng tôi có thể cải thiện hoặc cho chúng tôi biết điều bạn thích ở ứng dụng của chúng tôi.',
      'zh-CN': '分享您的反馈，让我们知道如何改进，或告诉我们您喜欢我们应用的哪些方面。',
    },
  });

  String get i18n => localize(this, _t);
  String get i18nEnglish => localizeVersion('en-US', this, _t);

  String fill(List<Object> params) => localizeFill(this, params);

  String plural(value) => localizePlural(value, this, _t);
}
