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
  // "en_us": "",
  // "vi_vi": "",
  // },

  static final _t = Translations.byId<Object>('en_us', {
    /// Common
    // NoInternetBubble
    // "": {
    // "en_us": "",
    // "vi_vi": "",
    // },
    // "": {
    //   "en_us": "",
    //   "vi_vi": "",
    // },    // "": {
    //   "en_us": "",
    //   "vi_vi": "",
    // },

    'Copy': {'en_us': 'Copy', 'vi_vi': 'Sao chép', 'zh_cn': '复制'},
    'Documentation': {
      'en_us': 'Documentation',
      'vi_vi': 'Tài liệu tham khảo',
      'zh_cn': '文档'
    },
    'Additional Flutter Resources': {
      'en_us': 'Additional Flutter Resources',
      'vi_vi': 'Tài liệu tham khảo khác',
      'zh_cn': '额外的 Flutter 资源'
    },
    "Don't forget to press Enter after changing the name of the color to save the changes.":
        {
      'en_us':
          "Don't forget to press Enter after changing the name of the color to save the changes.",
      'vi_vi':
          'Đừng quên nhấn Enter sau khi thay đổi tên của màu sắc để lưu lại thay đổi.',
      'zh_cn': '不要忘记在更改颜色名称后按下 Enter 键以保存更改。'
    },
    'Official Documentation Websites': {
      'en_us': 'Official Documentation Websites',
      'vi_vi': 'Website tài liệu tham khảo chính thức',
      'zh_cn': '官方文档网站'
    },
    'Flutter Docs': {
      'en_us': 'Flutter Docs',
      'vi_vi': 'Tài liệu Flutter',
      'zh_cn': 'Flutter 文档'
    },
    'Common Flutter CLI Commands': {
      'en_us': 'Common Flutter CLI Commands',
      'vi_vi': 'Câu lệnh phổ biến trong Flutter',
      'zh_cn': '常用的 Flutter CLI 命令'
    },
    'Features': {'en_us': 'Features', 'vi_vi': 'Tính năng', 'zh_cn': '功能'},
    'Additional Tools': {
      'en_us': 'Additional Tools',
      'vi_vi': 'Công cụ hỗ trợ',
      'zh_cn': '附加工具'
    },
    'Supports developers in working more efficiently when developing applications on Flutter.':
        {
      'en_us':
          'Supports developers in working more efficiently when developing applications on Flutter.',
      'vi_vi':
          'Hỗ trợ lập trình viên làm việc một cách thuận lợi hơn khi phát triển ứng dụng trên Flutter.',
      'zh_cn': '帮助开发人员在使用 Flutter 开发应用程序时更高效地工作。'
    },
    'Others': {'en_us': 'Others', 'vi_vi': 'Khác', 'zh_cn': '其他'},
    'Enable Additional Tools': {
      'en_us': 'Enable Additional Tools',
      'vi_vi': 'Bật các công cụ hỗ trợ',
      'zh_cn': '启用附加工具'
    },
    'Image Compressor': {
      'en_us': 'Image Compressor',
      'vi_vi': 'Trình nén ảnh',
      'zh_cn': '图片压缩器'
    },
    'Reduce image file sizes without quality loss.': {
      'en_us': 'Reduce image file sizes.',
      'vi_vi': 'Giảm kích thước ảnh.',
      'zh_cn': '无损压缩图像文件大小。'
    },
    'Test and debug your API endpoints.': {
      'en_us': 'Test and debug your API endpoints.',
      'vi_vi': 'Kiểm tra và thử nghiệm API của bạn.',
      'zh_cn': '测试和调试您的 API 端点。'
    },
    'Select Topic': {
      'en_us': 'Select Topic',
      'vi_vi': 'Chọn chủ đề',
      'zh_cn': '选择主题'
    },
    'All': {'en_us': 'All', 'vi_vi': 'Tất cả', 'zh_cn': '全部'},
    'See more': {'en_us': 'See more', 'vi_vi': 'Xem thêm', 'zh_cn': '查看更多'},
    'Collapse': {'en_us': 'Collapse', 'vi_vi': 'Thu gọn', 'zh_cn': '收起'},
    'Essential Tools for Flutter Developers.': {
      'en_us': 'Essential Tools for Flutter Developers.',
      'vi_vi': 'Các công cụ cần thiết cho lập trình viên Flutter',
      'zh_cn': 'Flutter 开发人员的必备工具。'
    },
    'A command-line interface for managing Flutter project.': {
      'en_us': 'A command-line interface for managing Flutter project.',
      'vi_vi': 'Danh sách các câu lệnh thông dụng trong dự án Flutter.',
      'zh_cn': '用于管理 Flutter 项目的命令行接口。'
    },
    'Fonts Preview': {
      'en_us': 'Fonts Preview',
      'vi_vi': 'Xem trước Phông chữ',
      'zh_cn': '字体预览'
    },
    'Icons Preview': {
      'en_us': 'Icons Preview',
      'vi_vi': 'Xem trước Biểu tượng',
      'zh_cn': '图标预览'
    },
    'App Icon Setter for Flutter': {
      'en_us': 'App Icon Setter for Flutter',
      'vi_vi': 'Thay đổi biểu tượng cho ứng dụng FLutter',
      'zh_cn': '适用于 Flutter 的应用程序图标设置器'
    },
    'Options': {'en_us': 'Options', 'vi_vi': 'Tùy chọn', 'zh_cn': '选项'},
    'Flutter Documentation': {
      'en_us': 'Flutter Documentation',
      'vi_vi': 'Tài liệu tham khảo cho Flutter',
      'zh_cn': 'Flutter 文档'
    },
    'Explore setup steps, API references, and example projects to accelerate your development.':
        {
      'en_us':
          'Explore setup steps, API references, and example projects to accelerate your development.',
      'vi_vi':
          'Khám phá các bước cài đặt, tài liệu API và các dự án mẫu để tăng tốc quá trình phát triển của bạn.',
      'zh_cn': '探索设置步骤、API 参考和示例项目，以加速您的开发。'
    },
    'Have feedback or suggestions for us?': {
      'en_us': 'Have feedback or suggestions for us?',
      'vi_vi': 'Bạn có góp ý hoặc đề xuất cho chúng tôi không?',
      'zh_cn': '对我们有反馈或建议吗？'
    },
    "What's new?": {
      'en_us': "What's new?",
      'vi_vi': 'Có gì mới?',
      'zh_cn': '有什么新内容？'
    },
    'Save': {'en_us': 'Save', 'vi_vi': 'Lưu', 'zh_cn': '保存'},
    'Sending your feedbacks...': {
      'en_us': 'Sending your feedbacks...',
      'vi_vi': 'Đang gửi phản hồi của bạn...',
      'zh_cn': '正在发送您的反馈...'
    },
    'Please check your internet connection or update your app if this bug persists.':
        {
      'en_us':
          'Please check your internet connection or update your app if this bug persists.',
      'vi_vi':
          'Vui lòng kiểm tra kết nối internet của bạn hoặc cập nhật ứng dụng nếu lỗi này vẫn tiếp diễn.',
      'zh_cn': '如果此问题仍然存在，请检查您的互联网连接或更新您的应用程序。'
    },
    'Report bugs or feedback about our app:': {
      'en_us': 'Report bugs or feedback about our app:',
      'vi_vi': 'Báo cáo lỗi hoặc góp ý về ứng dụng của chúng tôi:',
      'zh_cn': '报告我们应用程序的错误或反馈：'
    },

    'Feedback': {'en_us': 'Feedback', 'vi_vi': 'Góp ý', 'zh_cn': '反馈'},
    'Type your report here': {
      'en_us': 'Type your report here',
      'vi_vi': 'Nhập phản hồi của bạn tại đây',
      'zh_cn': '在此输入您的报告'
    },
    'Loading...': {
      'en_us': 'Loading...',
      'vi_vi': 'Đang tải...',
      'zh_cn': '加载中...'
    },
    'You can learn how to use Fluent UI System Icons in your Flutter app by following the documentation.':
        {
      'en_us':
          'You can learn how to use Fluent UI System Icons in your Flutter app by following the documentation.',
      'vi_vi':
          'Bạn có thể tham khảo cách sử dụng Fluent UI System Icons trong dự án của bạn bằng cách đọc qua tài liệu hướng dẫn.',
      'zh_cn': '你可以通过查看文档来学习如何在你的 Flutter 应用中使用 Fluent UI 系统图标。'
    },
    'Back': {'en_us': 'Back', 'vi_vi': 'Trở về', 'zh_cn': '返回'},
    'Feedback submitted successfully!': {
      'en_us': 'Feedback submitted successfully!',
      'vi_vi': 'Góp ý của bạn đã được gửi!',
      'zh_cn': '反馈提交成功！'
    },
    'Rate us': {'en_us': 'Rate us', 'vi_vi': 'Đánh giá', 'zh_cn': '给我们评分'},
    'Sign up': {'en_us': 'Sign up', 'vi_vi': 'Đăng ký', 'zh_cn': '注册'},
    "Don't have an account?": {
      'en_us': "Don't have an account?",
      'vi_vi': 'Bạn chưa có tài khoản?',
      'zh_cn': '没有账户？'
    },
    'Continues': {'en_us': 'Continues', 'vi_vi': 'Tiếp tục', 'zh_cn': '继续'},
    'Manage account': {
      'en_us': 'Manage account',
      'vi_vi': 'Quản lý tài khoản',
      'zh_cn': '管理账户'
    },
    'Log out and remove all local data from this device.': {
      'en_us': 'Log out and remove all local data from this device.',
      'vi_vi': 'Đăng xuất và xóa tất cả dữ liệu cục bộ khỏi thiết bị này.',
      'zh_cn': '退出并从此设备中删除所有本地数据。'
    },
    'Password': {'en_us': 'Password', 'vi_vi': 'Mật khẩu', 'zh_cn': '密码'},
    'The quick brown fox jumps over the lazy dog.': {
      'en_us': 'The quick brown fox jumps over the lazy dog.',
      'vi_vi': 'Con cáo nâu nhanh nhẹn nhảy qua con chó lười biếng.',
      'zh_cn': '敏捷的棕色狐狸跳过懒狗。'
    },
    "You're not connected": {
      'en_us': "You're not connected",
      'vi_vi': 'Không có kết nối mạng',
      'zh_cn': '您未连接网络'
    },
    "We'd love to hear your feedback!": {
      'en_us': "We'd love to hear your feedback!",
      'vi_vi': 'Chúng tôi rất muốn nghe phản hồi của bạn!',
      'zh_cn': '我们很想听到您的反馈！'
    },
    'Give feedbacks': {
      'en_us': 'Give feedbacks',
      'vi_vi': 'Gửi phản hồi',
      'zh_cn': '提交反馈'
    },
    'Later': {'en_us': 'Later', 'vi_vi': 'Để sau', 'zh_cn': '稍后'},
    'SubSentenceInNoInternetBubble': {
      'en_us':
          'No internet. You are not connected to the internet, or your internet connection is experiencing an issue.',
      'vi_vi':
          'Không có mạng. Bạn đang mất kết nối mạng hoặc mạng của bạn đang gặp sự cố.',
      'zh_cn': '没有网络连接。您未连接到网络，或网络连接出现问题。'
    },
    'Cancel': {'en_us': 'Cancel', 'vi_vi': 'Hủy bỏ', 'zh_cn': '取消'},
    'All rights reserved.': {
      'en_us': 'All rights reserved.',
      'vi_vi': 'Mọi quyền được bảo lưu.',
      'zh_cn': '版权所有。'
    },
    'Available at': {
      'en_us': 'Available at',
      'vi_vi': 'Đã có mặt ở',
      'zh_cn': '可用于'
    },
    "Oops, it's a ghost town in here!": {
      'en_us': "Oops, it's a ghost town in here!",
      'vi_vi': 'Oops, có một thành phố ma ở đây!',
      'zh_cn': '哎呀，这里是个鬼城！'
    },
    'Press back again to exit': {
      'en_us': 'Press back again to exit',
      'vi_vi': 'Bấm trở lại lần nữa để thoát',
      'zh_cn': '再次按返回键退出'
    },
    'About': {'en_us': 'About', 'vi_vi': 'Thông tin', 'zh_cn': '关于'},
    'No Internet': {
      'en_us': 'No Internet',
      'vi_vi': 'Không có kết nối Internet',
      'zh_cn': '无互联网连接'
    },
    'No internet connection.': {
      'en_us': 'No internet connection.',
      'vi_vi': 'Không có kết nối mạng.',
      'zh_cn': '没有网络连接。'
    },
    'Permission Required': {
      'en_us': 'Permission Required',
      'vi_vi': 'Yêu cầu quyền',
      'zh_cn': '需要权限'
    },
    'You not connected to the internet or the application having trouble while trying to connect to the network.':
        {
      'en_us':
          'You not connected to the internet or the application having trouble while trying to connect to the network.',
      'vi_vi':
          'Bạn không kết nối với Internet hoặc ứng dụng gặp sự cố khi cố gắng kết nối với mạng.',
      'zh_cn': '您未连接到互联网或应用程序在尝试连接网络时遇到问题。'
    },

    'Flutter Toolkit': {
      'en_us': 'Flutter Toolkit',
      'vi_vi': 'Flutter Toolkit',
      'zh_cn': 'Flutter 工具包'
    },
    'Storage permission denied.': {
      'en_us': 'Storage permission denied.',
      'vi_vi': 'Quyền truy cập bộ nhớ bị từ chối.',
      'zh_cn': '存储权限被拒绝。'
    },
    'Instructions': {
      'en_us': 'Instructions',
      'vi_vi': 'Hướng dẫn',
      'zh_cn': '说明'
    },
    'Restore the settings to their default as when the application was first installed.':
        {
      'en_us':
          'Restore the settings to their default as when the application was first installed.',
      'vi_vi':
          'Khôi phục các thiết lập về cài đặt mặc định như lúc ứng dụng mới được cài đặt lần đầu.',
      'zh_cn': '将设置恢复为应用程序首次安装时的默认值。'
    },
    'Default settings are restored': {
      'en_us': 'Default settings are restored',
      'vi_vi': 'Đã khôi mục cài đặt về mặc định',
      'zh_cn': '默认设置已恢复'
    },
    'Reset to default settings': {
      'en_us': 'Reset to default settings',
      'vi_vi': 'Khôi phục cài đặt gốc',
      'zh_cn': '恢复默认设置'
    },
    'Copied to clipboard': {
      'en_us': 'Copied to clipboard',
      'vi_vi': 'Đã sao chép vào bộ nhớ tạm',
      'zh_cn': '已复制到剪贴板'
    },
    'Licenses': {'en_us': 'Licenses', 'vi_vi': 'Giấy phép', 'zh_cn': '许可证'},
    'DescriptionTextForLicenses': {
      'en_us':
          'Our app utilizes various open-source libraries. Here, you can view the licenses and attributions for the third-party software integrated into our product.',
      'vi_vi':
          'Ứng dụng của chúng tôi sử dụng nhiều thư viện mã nguồn mở. Tại đây, bạn có thể xem các giấy phép và sự ghi nhận cho phần mềm của bên thứ ba được tích hợp vào sản phẩm của chúng tôi.',
      'zh_cn': '我们的应用程序使用了各种开源库。在这里，您可以查看集成到我们产品中的第三方软件的许可证和归属。'
    },
    'Release notes': {
      'en_us': 'Release notes',
      'vi_vi': 'Thông tin phiên bản',
      'zh_cn': '发布说明'
    },
    'System default': {
      'en_us': 'System default',
      'vi_vi': 'Tự động',
      'zh_cn': '系统默认'
    },
    'English': {'en_us': 'English', 'vi_vi': 'English', 'zh_cn': '英语'},
    'Tiếng Việt': {
      'en_us': 'Tiếng Việt',
      'vi_vi': 'Tiếng Việt',
      'zh_cn': '越南语'
    },
    'Use System Theme': {
      'en_us': 'Use System Theme',
      'vi_vi': 'Sử dụng chủ đề hệ thống',
      'zh_cn': '使用系统主题'
    },
    'Accent color': {
      'en_us': 'Accent color',
      'vi_vi': 'Tông màu',
      'zh_cn': '强调色'
    },
    'DesciptionTextForPrivacyPolicy': {
      'en_us':
          'We hold your privacy in high regard and assure you that your personal data will not be disclosed to any third party.',
      'vi_vi':
          'Chúng tôi tôn trọng quyền riêng tư của bạn và cam kết dữ liệu cá nhân của bạn sẽ không được chia sẻ với bất cứ bên thứ ba nào cả.',
      'zh_cn': '我们高度重视您的隐私，并向您保证您的个人数据不会被透露给任何第三方。'
    },
    'For more information about our privacy policy, please visit:': {
      'en_us': 'For more information about our privacy policy, please visit:',
      'vi_vi':
          'Để biết thêm chi tiết về điều khoản riêng tư, vui lòng truy cập:',
      'zh_cn': '有关隐私政策的更多信息，请访问：'
    },
    'Privacy Policy': {
      'en_us': 'Privacy Policy',
      'vi_vi': 'Điều khoản',
      'zh_cn': '隐私政策'
    },
    'Settings': {'en_us': 'Settings', 'vi_vi': 'Cài đặt', 'zh_cn': '设置'},
    '* The changes will become effective the next time you open the app.': {
      'en_us':
          'Note: The changes will become effective the next time you open the app.',
      'vi_vi':
          'Ghi chú: Những thay đổi sẽ có hiệu lực vào lần tiếp theo bạn mở ứng dụng.',
      'zh_cn': '注意：更改将在您下次打开应用程序时生效。'
    },
    'Common': {'en_us': 'Common', 'vi_vi': 'Cài đặt chung', 'zh_cn': '通用'},
    'Language': {'en_us': 'Language', 'vi_vi': 'Ngôn ngữ', 'zh_cn': '语言'},
    'Select a language': {
      'en_us': 'Select a language',
      'vi_vi': 'Chọn một ngôn ngữ',
      'zh_cn': '选择一种语言'
    },
    'Log out': {'en_us': 'Log out', 'vi_vi': 'Đăng xuất', 'zh_cn': '登出'},
    'Account': {'en_us': 'Account', 'vi_vi': 'Tài khoản', 'zh_cn': '账户'},
    'User': {'en_us': 'User', 'vi_vi': 'Người dùng', 'zh_cn': '用户'},
    'Light mode': {'en_us': 'Light', 'vi_vi': 'Sáng', 'zh_cn': '浅色模式'},
    'Dark mode': {'en_us': 'Dark', 'vi_vi': 'Tối', 'zh_cn': '深色模式'},
    'Adaptive': {'en_us': 'Adaptive', 'vi_vi': 'Tự động', 'zh_cn': '自适应'},
    'Theme': {'en_us': 'Theme', 'vi_vi': 'Giao diện', 'zh_cn': '主题'},
    'Customize': {'en_us': 'Customize', 'vi_vi': 'Tùy chỉnh', 'zh_cn': '自定义'},
    'Preferences': {
      'en_us': 'Preferences',
      'vi_vi': 'Tùy chỉnh',
      'zh_cn': '偏好设置'
    },
    'Response': {'en_us': 'Response', 'vi_vi': 'Phản hồi', 'zh_cn': '响应'},
    'Status': {'en_us': 'Status', 'vi_vi': 'Trạng thái', 'zh_cn': '状态'},
    'OK': {'en_us': 'OK', 'vi_vi': 'Đồng ý', 'zh_cn': '确定'},
    'Fonts': {'en_us': 'Fonts', 'vi_vi': 'Phông chữ', 'zh_cn': '字体'},
    'Image Compress': {
      'en_us': 'Image Compress',
      'vi_vi': 'Nén ảnh',
      'zh_cn': '图像压缩'
    },
    'Icons': {'en_us': 'Icons', 'vi_vi': 'Biểu tượng', 'zh_cn': '图标'},
    'Image': {'en_us': 'Image', 'vi_vi': 'Hình ảnh', 'zh_cn': '图片'},
    'Dashboard': {'en_us': 'Dashboard', 'vi_vi': 'Trang chủ', 'zh_cn': '仪表盘'},
    'App Icon Setter': {
      'en_us': 'App Icon Setter',
      'vi_vi': 'Trình đặt biểu tượng ứng dụng',
      'zh_cn': '适用于 Flutter 的应用程序图标设置器'
    },
    'App Icon Setter for Flutter Project': {
      'en_us': 'App Icon Setter for Flutter Program',
      'vi_vi': 'Trình đặt biểu tượng cho ứng dụng Flutter',
      'zh_cn': '适用于 Flutter 的应用程序图标设置器'
    },

    'Color Picker': {
      'en_us': 'Color Picker',
      'vi_vi': 'Chọn màu',
      'zh_cn': '颜色选择器'
    },
    'Font Previewer': {
      'en_us': 'Font Previewer',
      'vi_vi': 'Màn hình xem trước phông chữ',
      'zh_cn': '字体预览器'
    },
    'For implementation steps, visit:': {
      'en_us': 'For implementation steps, visit:',
      'vi_vi': 'Để biết các bước triển khai, hãy truy cập:',
      'zh_cn': '有关实现步骤，请访问：'
    },
    'Google Fonts on pub.dev': {
      'en_us': 'Google Fonts on pub.dev',
      'vi_vi': 'Google Fonts trên pub.dev',
      'zh_cn': 'pub.dev 上的 Google 字体'
    },
    'You can learn how to use Google Fonts in your Flutter app by following the documentation.':
        {
      'en_us':
          'You can learn how to use Google Fonts in your Flutter app by following the documentation.',
      'vi_vi':
          'Bạn có thể tìm hiểu cách sử dụng Google Fonts trong ứng dụng Flutter của mình bằng cách làm theo tài liệu.',
      'zh_cn': '您可以通过遵循文档来学习如何在您的 Flutter 应用中使用 Google 字体。'
    },
    'Image Compression': {
      'en_us': 'Image Compression',
      'vi_vi': 'Nén hình ảnh',
      'zh_cn': '图像压缩'
    },
    'Step 1: Pick Images to Compress': {
      'en_us': 'Step 1: Pick Images to Compress',
      'vi_vi': 'Bước 1: Chọn hình ảnh để nén',
      'zh_cn': '步骤 1：选择要压缩的图像'
    },
    'You can select multiple JPG or PNG images to compress. Click the button below to start.':
        {
      'en_us':
          'You can select multiple JPG or PNG images to compress. Click the button below to start.',
      'vi_vi':
          'Bạn có thể chọn nhiều hình ảnh JPG hoặc PNG để nén. Nhấn nút bên dưới để bắt đầu.',
      'zh_cn': '您可以选择多个 JPG 或 PNG 图像进行压缩。单击下面的按钮开始。'
    },
    'Pick Images': {
      'en_us': 'Pick Images',
      'vi_vi': 'Chọn hình ảnh',
      'zh_cn': '选择图像'
    },
    'Selected Images': {
      'en_us': 'Selected Images',
      'vi_vi': 'Hình ảnh đã chọn',
      'zh_cn': '已选图像'
    },
    'No images selected.': {
      'en_us': 'No images selected.',
      'vi_vi': 'Chưa chọn hình ảnh nào.',
      'zh_cn': '未选择图像。'
    },
    'Step 2: Adjust Quality of Compression': {
      'en_us': 'Step 2: Adjust Quality of Compression',
      'vi_vi': 'Bước 2: Điều chỉnh chất lượng nén',
      'zh_cn': '步骤 2：调整压缩质量'
    },
    'Use the slider below to set the quality for compression (0 = low quality, 100 = high quality).':
        {
      'en_us':
          'Use the slider below to set the quality for compression (0 = low quality, 100 = high quality).',
      'vi_vi':
          'Sử dụng thanh trượt bên dưới để đặt chất lượng nén (0 = chất lượng thấp, 100 = chất lượng cao).',
      'zh_cn': '使用下面的滑块设置压缩质量（0 = 低质量，100 = 高质量）。'
    },
    'Quality:': {'en_us': 'Quality:', 'vi_vi': 'Chất lượng:', 'zh_cn': '质量：'},
    'Step 3: Choose Output Directory': {
      'en_us': 'Step 3: Choose Output Directory',
      'vi_vi': 'Bước 3: Chọn thư mục đầu ra',
      'zh_cn': '步骤 3：选择输出目录'
    },
    'Select Output Directory': {
      'en_us': 'Select Output Directory',
      'vi_vi': 'Chọn thư mục đầu ra',
      'zh_cn': '选择输出目录'
    },

    'Output Directory: ': {
      'en_us': 'Output Directory: ',
      'vi_vi': 'Thư mục đầu ra: ',
      'zh_cn': '输出目录：'
    },
    'Step 4: Compress Images': {
      'en_us': 'Step 4: Compress Images',
      'vi_vi': 'Bước 4: Nén hình ảnh',
      'zh_cn': '步骤 4：压缩图像'
    },
    'Compress Images': {
      'en_us': 'Compress Images',
      'vi_vi': 'Nén hình ảnh',
      'zh_cn': '压缩图像'
    },
    'Compression completed!': {
      'en_us': 'Compression completed!',
      'vi_vi': 'Nén hoàn tất!',
      'zh_cn': '压缩完成！'
    },
    'JSON Formatter': {
      'en_us': 'JSON Formatter',
      'vi_vi': 'Định dạng JSON',
      'zh_cn': 'JSON 格式化工具'
    },
    'Enter your JSON below and click \'Format JSON\' to prettify it. Make sure it\'s valid JSON format.':
        {
      'en_us':
          'Enter your JSON below and click \'Format JSON\' to prettify it. Make sure it\'s valid JSON format.',
      'vi_vi':
          'Nhập JSON của bạn bên dưới và nhấn \'Định dạng JSON\' để làm đẹp nó. Đảm bảo rằng đó là định dạng JSON hợp lệ.',
      'zh_cn': '在下方输入您的 JSON 并点击“格式化 JSON”以美化它。确保它是有效的 JSON 格式。'
    },
    'Enter JSON': {
      'en_us': 'Enter JSON',
      'vi_vi': 'Nhập JSON',
      'zh_cn': '输入 JSON'
    },
    'Format JSON': {
      'en_us': 'Format JSON',
      'vi_vi': 'Định dạng JSON',
      'zh_cn': '格式化 JSON'
    },
    'Formatted JSON will appear here': {
      'en_us': 'Formatted JSON will appear here',
      'vi_vi': 'JSON đã định dạng sẽ xuất hiện ở đây',
      'zh_cn': '格式化的 JSON 将显示在此处'
    },
    'action': {'en_us': 'action', 'vi_vi': 'hành động', 'zh_cn': '操作'},
    'alert': {'en_us': 'alert', 'vi_vi': 'cảnh báo', 'zh_cn': '警报'},
    'av': {'en_us': 'av', 'vi_vi': 'nghe nhìn', 'zh_cn': '视听'},
    'communication': {
      'en_us': 'communication',
      'vi_vi': 'giao tiếp',
      'zh_cn': '通信'
    },
    'content': {'en_us': 'content', 'vi_vi': 'nội dung', 'zh_cn': '内容'},
    'device': {'en_us': 'device', 'vi_vi': 'thiết bị', 'zh_cn': '设备'},
    'editor': {'en_us': 'editor', 'vi_vi': 'trình chỉnh sửa', 'zh_cn': '编辑器'},
    'file': {'en_us': 'file', 'vi_vi': 'tệp', 'zh_cn': '文件'},
    'hardware': {'en_us': 'hardware', 'vi_vi': 'phần cứng', 'zh_cn': '硬件'},
    'home': {'en_us': 'home', 'vi_vi': 'trang chủ', 'zh_cn': '主页'},
    'image': {'en_us': 'image', 'vi_vi': 'hình ảnh', 'zh_cn': '图像'},
    'maps': {'en_us': 'maps', 'vi_vi': 'bản đồ', 'zh_cn': '地图'},
    'navigation': {'en_us': 'navigation', 'vi_vi': 'dẫn đường', 'zh_cn': '导航'},
    'notification': {
      'en_us': 'notification',
      'vi_vi': 'thông báo',
      'zh_cn': '通知'
    },
    'places': {'en_us': 'places', 'vi_vi': 'địa điểm', 'zh_cn': '地点'},
    'search': {'en_us': 'search', 'vi_vi': 'tìm kiếm', 'zh_cn': '搜索'},
    'social': {'en_us': 'social', 'vi_vi': 'xã hội', 'zh_cn': '社交'},
    'toggle': {'en_us': 'toggle', 'vi_vi': 'bật/tắt', 'zh_cn': '切换'},
    'API Testing': {
      'en_us': 'API Testing',
      'vi_vi': 'Kiểm thử API',
      'zh_cn': 'API 测试'
    },
    'API Testing Tool': {
      'en_us': 'API Testing Tool',
      'vi_vi': 'Công cụ kiểm thử API',
      'zh_cn': 'API 测试工具'
    },

    "This API Testing Tool allows you to perform basic HTTP requests like GET, POST, and DELETE. Enter a URL to test the response and see the status code and data returned by the server.":
        {
      "en_us":
          "This API Testing Tool allows you to perform basic HTTP requests like GET, POST, and DELETE. Enter a URL to test the response and see the status code and data returned by the server.",
      "vi_vi":
          "Công cụ kiểm tra API này cho phép bạn thực hiện các yêu cầu HTTP cơ bản như GET, POST và DELETE. Nhập một URL để kiểm tra phản hồi và xem mã trạng thái cũng như dữ liệu được trả về bởi máy chủ.",
      "zh_cn":
          "此 API 测试工具允许您执行基本的 HTTP 请求，如 GET、POST 和 DELETE。输入一个 URL 以测试响应，并查看服务器返回的状态代码和数据。"
    },
    "Choose your preferred font style and size.": {
      "en_us": "Choose your preferred font style and size.",
      "vi_vi": "Chọn kiểu và kích thước phông chữ ưa thích của bạn",
      "zh_cn": "选择您偏好的字体样式和大小。"
    },
    "Pick the perfect color for your project.": {
      "en_us": "Pick the perfect color for your project.",
      "vi_vi": "Chọn màu sắc hoàn hảo cho dự án của bạn",
      "zh_cn": "为您的项目选择完美的颜色。"
    },
    "Browse and select from a variety of icons.": {
      "en_us": "Browse and select from a variety of icons.",
      "vi_vi": "Duyệt và chọn từ nhiều biểu tượng khác nhau",
      "zh_cn": "浏览并从多种图标中选择。"
    },
    "Format your JSON data for better readability.": {
      "en_us": "Format your JSON data for better readability.",
      "vi_vi": "Định dạng dữ liệu JSON của bạn để dễ đọc hơn",
      "zh_cn": "格式化您的 JSON 数据以提高可读性。"
    },
    "Create custom icons tailored to your needs.": {
      "en_us": "Create custom icons tailored to your needs.",
      "vi_vi": "Tạo các biểu tượng tùy chỉnh theo nhu cầu của bạn",
      "zh_cn": "根据您的需求创建自定义图标。"
    },
    "Reduce image file sizes without sacrificing quality.": {
      "en_us": "Reduce image file sizes without sacrificing quality.",
      "vi_vi": "Giảm kích thước tệp hình ảnh mà không làm giảm chất lượng",
      "zh_cn": "在不牺牲质量的情况下减少图像文件大小。"
    },
    "Test and debug your API endpoints efficiently.": {
      "en_us": "Test and debug your API endpoints efficiently.",
      "vi_vi": "Kiểm tra và gỡ lỗi các điểm cuối API của bạn một cách hiệu quả",
      "zh_cn": "高效测试和调试您的 API 端点。"
    },
    "Step 1: Select a PNG Image": {
      "en_us": "Step 1: Select a PNG Image",
      "vi_vi": "Bước 1: Chọn một hình ảnh PNG",
      "zh_cn": "步骤 1：选择一个 PNG 图像"
    },
    "Choose a PNG image that will be used to generate icons for various platforms. The image should be clear and high-resolution.":
        {
      "en_us":
          "Choose a PNG image that will be used to generate icons for various platforms. The image should be clear and high-resolution.",
      "vi_vi":
          "Chọn một hình ảnh PNG sẽ được sử dụng để tạo biểu tượng cho nhiều nền tảng khác nhau. Hình ảnh cần rõ ràng và có độ phân giải cao.",
      "zh_cn": "选择一个 PNG 图像，用于为各种平台生成图标。图像应清晰且分辨率高。"
    },
    "Select PNG Image": {
      "en_us": "Select PNG Image",
      "vi_vi": "Chọn hình ảnh PNG",
      "zh_cn": "选择 PNG 图像"
    },
    "Change Image": {
      "en_us": "Change Image",
      "vi_vi": "Thay đổi hình ảnh",
      "zh_cn": "更改图像"
    },
    "Step 2: Select the Flutter Project Location": {
      "en_us": "Step 2: Select the Flutter Project Location",
      "vi_vi": "Bước 2: Chọn vị trí của dự án Flutter",
      "zh_cn": "步骤 2：选择 Flutter 项目位置"
    },
    "Pick the root directory of your Flutter project. Icons will be generated and placed in the appropriate folders for Android, iOS, macOS, Windows, and Web platforms.":
        {
      "en_us":
          "Pick the root directory of your Flutter project. Icons will be generated and placed in the appropriate folders for Android, iOS, macOS, Windows, and Web platforms.",
      "vi_vi":
          "Chọn thư mục gốc của dự án Flutter của bạn. Các biểu tượng sẽ được tạo và đặt vào các thư mục phù hợp cho các nền tảng Android, iOS, macOS, Windows và Web.",
      "zh_cn":
          "选择 Flutter 项目的根目录。图标将生成并放置在 Android、iOS、macOS、Windows 和 Web 平台的相应文件夹中。"
    },
    "Select Flutter Project": {
      "en_us": "Select Flutter Project",
      "vi_vi": "Chọn dự án Flutter",
      "zh_cn": "选择 Flutter 项目"
    },
    "Change Project Path": {
      "en_us": "Change Project Path",
      "vi_vi": "Thay đổi đường dẫn dự án",
      "zh_cn": "更改项目路径"
    },
    "Project Path": {
      "en_us": "Project Path",
      "vi_vi": "Đường dẫn dự án",
      "zh_cn": "项目路径"
    },
    "Step 3: Generate Icons": {
      "en_us": "Step 3: Generate Icons",
      "vi_vi": "Bước 3: Tạo biểu tượng",
      "zh_cn": "步骤 3：生成图标"
    },
    "Click the \"Generate Icons\" button to create icons for each platform. Make sure you have selected a valid PNG image and Flutter project location before proceeding.":
        {
      "en_us":
          "Click the \"Generate Icons\" button to create icons for each platform. Make sure you have selected a valid PNG image and Flutter project location before proceeding.",
      "vi_vi":
          "Nhấn nút \"Tạo biểu tượng\" để tạo biểu tượng cho từng nền tảng. Hãy chắc chắn rằng bạn đã chọn một hình ảnh PNG hợp lệ và vị trí dự án Flutter trước khi tiếp tục.",
      "zh_cn": "点击“生成图标”按钮为每个平台创建图标。在继续之前，请确保已选择有效的 PNG 图像和 Flutter 项目位置。"
    },
    "Generate Icons": {
      "en_us": "Generate Icons",
      "vi_vi": "Tạo biểu tượng",
      "zh_cn": "生成图标"
    },
    "Icons generated successfully!": {
      "en_us": "Icons generated successfully!",
      "vi_vi": "Biểu tượng đã được tạo thành công!",
      "zh_cn": "图标生成成功！"
    },
    "Error:": {"en_us": "Error:", "vi_vi": "Lỗi:", "zh_cn": "错误："},
    "Add this color to Collection": {
      "en_us": "Add this color to Collection",
      "vi_vi": "Thêm màu vào này bộ sưu tập",
      "zh_cn": "将此颜色添加到收藏中"
    },
    "Label": {"en_us": "Label", "vi_vi": "Nhãn", "zh_cn": "标签"},
    "Overview": {"en_us": "Overview", "vi_vi": "Tổng quan", "zh_cn": "概览"},
    "Color Collection": {
      "en_us": "Color Collection",
      "vi_vi": "Bộ sưu tập",
      "zh_cn": "颜色收藏"
    },
    "The following folders will be changed.": {
      "en_us": "The following folders will be changed.",
      "vi_vi": "Các thư mục sau sẽ được thay đổi.",
      "zh_cn": "以下文件夹将被更改。"
    },
    'Help Us Improve': {
      'en_us': 'Help Us Improve',
      'vi_vi': 'Phản hồi',
      'zh_cn': '帮助我们改进'
    },
    'Flutter Learning Roadmap': {
      'en_us': 'Flutter Learning Roadmap',
      'vi_vi': 'Lộ Trình Học Flutter',
      'zh_cn': 'Flutter学习路线图'
    },
    'A structured guide to help you advance from beginner to expert in Flutter.':
        {
      'en_us':
          'A structured guide to help you advance from beginner to expert in Flutter.',
      'vi_vi':
          'Một hướng dẫn có cấu trúc giúp bạn tiến bộ từ người mới bắt đầu đến chuyên gia trong Flutter.',
      'zh_cn': '一份结构化的指南，帮助您从Flutter初学者进阶到专家。',
    },
    'Refer to https://github.com/olexale/flutter_roadmap for the latest version and links.':
        {
      'en_us':
          'Refer to https://github.com/olexale/flutter_roadmap for the latest version and links.',
      'vi_vi':
          'Tham khảo https://github.com/olexale/flutter_roadmap để có phiên bản và liên kết mới nhất.',
      'zh_cn': '请参阅 https://github.com/olexale/flutter_roadmap 以获取最新版本和链接。',
    },
    'introductionRoadmap': {
      'en_us':
          'This guide will help you progress from a beginner to an advanced Flutter developer. It outlines key concepts, tools, and best practices you need to master, including Dart programming, Flutter widgets, UI design, and state management. Follow this roadmap to build a solid foundation in Flutter and start developing powerful mobile applications.',
      'vi_vi':
          'Hướng dẫn này sẽ giúp bạn tiến bộ từ người mới bắt đầu đến nhà phát triển Flutter nâng cao. Nó bao gồm các khái niệm chính, công cụ và thực tiễn tốt nhất mà bạn cần nắm vững, bao gồm lập trình Dart, widget Flutter, thiết kế giao diện người dùng và quản lý trạng thái. Hãy theo dõi lộ trình này để xây dựng nền tảng vững chắc trong Flutter và bắt đầu phát triển các ứng dụng di động mạnh mẽ.',
      'zh_cn':
          '本指南将帮助您从初学者进阶到高级Flutter开发者。它概述了您需要掌握的关键概念、工具和最佳实践，包括Dart编程、Flutter小部件、UI设计和状态管理。遵循此路线图，建立坚实的Flutter基础，开始开发强大的移动应用程序。',
    },

    'If something isn’t working as expected, we’d like to know. Share your feedback on how we can improve or let us know what you enjoy about our app.':
        {
      'en_us':
          "If something isn’t working as expected, we’d like to know. Share your feedback on how we can improve or let us know what you enjoy about our app.",
      'vi_vi':
          "Nếu có điều gì đó không hoạt động như mong đợi, chúng tôi muốn biết. Chia sẻ ý kiến của bạn về cách chúng tôi có thể cải thiện hoặc cho chúng tôi biết điều gì bạn yêu thích về ứng dụng của chúng tôi.",
      'zh_cn': "如果有任何问题未如预期般运作，我们希望了解您的反馈。请分享您的建议，让我们知道如何改进，或者告诉我们您喜欢的功能。"
    },
    'Basics': {
      'en_us': 'Basics',
      'vi_vi': 'Cơ bản',
      'zh_cn': '基础',
    },
    'Getting Deeper': {
      'en_us': 'Getting Deeper',
      'vi_vi': 'Đi sâu hơn',
      'zh_cn': '深入学习',
    },
    'Report Issues': {
      'en_us': 'Report Issues',
      'vi_vi': 'Báo cáo sự cố',
      'zh_cn': '报告问题'
    },
    'Open Note': {'en_us': 'Open Note', 'vi_vi': 'Mở ghi chú', 'zh_cn': '打开笔记'},
    'Almost there': {
      'en_us': 'Almost there',
      'vi_vi': 'Gần xong',
      'zh_cn': '快完成了',
    },
    'Dev Notes': {
      'en_us': 'Dev Notes',
      'vi_vi': 'Ghi chú lập trình',
      'zh_cn': '开发笔记'
    },
    'The End': {
      'en_us': 'The End',
      'vi_vi': 'Hoàn thành',
      'zh_cn': '结束',
    },
    'Must have': {
      'en_us': 'Must have',
      'vi_vi': 'Cần phải có',
      'zh_cn': '必备',
    },
    'Nice to have': {
      'en_us': 'Nice to have',
      'vi_vi': 'Nên có',
      'zh_cn': '锦上添花',
    },
    'Optional': {
      'en_us': 'Optional',
      'vi_vi': 'Tùy chọn',
      'zh_cn': '可选',
    },
    'Resources': {
      'en_us': 'Resources',
      'vi_vi': 'Tài nguyên',
      'zh_cn': '资源',
    },
    'Importance': {
      'en_us': 'Importance',
      'vi_vi': 'Tầm quan trọng',
      'zh_cn': '重要性',
    },
    'Development Fund': {
      'en_us': 'Development Fund',
      'vi_vi': 'Quỹ phát triển',
      'zh_cn': '发展基金'
    },
    'Join the 2%': {
      'en_us': 'Join the 2%',
      'vi_vi': 'Tham gia vào 2%',
      'zh_cn': '加入2%'
    },
    'description-donation': {
      'en_us':
          'When 2 percent of users donate, more developers will be supported to work on UI and tools. Free and Open Source for everyone, forever.',
      'vi_vi':
          'Khi 2 phần trăm người dùng quyên góp, nhiều nhà phát triển sẽ được hỗ trợ để làm việc, cải thiện giao diện và phát triển thêm công cụ. Ứng dụng miễn phí mãi mãi và mã nguồn mở dành cho mọi người.',
      'zh_cn': '当2%的用户捐款时，会有更多的开发人员得到支持来开发界面和工具。永远为每个人免费和开源。'
    },
    'or': {'en_us': 'or', 'vi_vi': 'hoặc', 'zh_cn': '或'},
    'cup of coffee': {
      'en_us': 'cup of coffee',
      'vi_vi': 'cốc cà phê',
      'zh_cn': '杯咖啡'
    },
    'cups of coffee': {
      'en_us': 'cups of coffee',
      'vi_vi': 'cốc cà phê',
      'zh_cn': '杯咖啡'
    },
    'A generous soul': {
      'en_us': 'A generous soul',
      'vi_vi': 'Một tâm hồn rộng lượng',
      'zh_cn': '慷慨的灵魂'
    },
    'Donate': {'en_us': 'Donate', 'vi_vi': 'Quyên góp', 'zh_cn': '捐款'},
    'Total amount': {
      'en_us': 'Total amount',
      'vi_vi': 'Tổng số tiền',
      'zh_cn': '总金额'
    },
    'personal-data-notice': {
      'en_us':
          'To ensure data safety. Your settings and data are stored locally and are not shared with any third parties. Please manually restore your settings and personal data when switching to a new device.',
      'vi_vi':
          'Để đảm bảo an toàn dữ liệu. Những cài đặt và dữ liệu của bạn được lưu trữ cục bộ và không được chia sẻ với bất kì bên thứ 3 nào. Vui lòng khôi phục những cài đặt và dữ liệu cá nhân bằng phương pháp thủ công khi chuyển sang dùng ở một thiết bị mới.',
      'zh_cn': '为了确保数据安全。您的设置和数据会存储在本地，不会与任何第三方共享。请在切换到新设备时手动恢复您的设置和个人数据。'
    },
    'Restore from a backup file': {
      'en_us': 'Restore from a backup file',
      'vi_vi': 'Khôi phục từ tệp sao lưu',
      'zh_cn': '从备份文件恢复'
    },
    'Restore': {'en_us': 'Restore', 'vi_vi': 'Khôi phục', 'zh_cn': '恢复'},
    'Create a new backup': {
      'en_us': 'Create a new backup',
      'vi_vi': 'Tạo bản sao lưu mới',
      'zh_cn': '创建新备份'
    }
  });

  String get i18n => localize(this, _t);
  String get i18nEnglish => localize(this, _t, locale: 'en_us');

  String fill(List<Object> params) => localizeFill(this, params);

  String plural(value) => localizePlural(value, this, _t);
}
