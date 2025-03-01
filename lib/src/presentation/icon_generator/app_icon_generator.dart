import 'dart:io';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutility/src/app/app.dart';
import 'package:image/image.dart' as img;
import 'package:path/path.dart' as p;
import 'package:image_picker/image_picker.dart';
import 'package:dotted_border/dotted_border.dart';

class AppIconGenerator extends StatefulWidget {
  const AppIconGenerator({super.key});

  @override
  State<AppIconGenerator> createState() => _AppIconGeneratorState();
}

class _AppIconGeneratorState extends State<AppIconGenerator> {
  File? _selectedImage;
  String? _projectPath;
  bool _isGenerating = false;
  final _imagePicker = ImagePicker();
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(FluentIcons.apps_settings_16_regular),
        title: Text('App Icon Setter for Flutter Project'.i18n),
        actions: [
          IconButton(
            icon: const Icon(FluentIcons.question_circle_28_regular),
            onPressed: (){
              _scrollController.animateTo(
                _scrollController.position.maxScrollExtent,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeOut,
              );
            },
          ),
          8.width,
        ],
      ),
      body: ListView(
        controller: _scrollController,
        padding: const EdgeInsets.only(bottom: 16, right: 16, left: 16),
        children: [
          // Step 1: Select PNG Image
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Step 1: Select a PNG Image'.i18n,
                          style: context.theme.textTheme.titleMedium,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Choose a PNG image that will be used to generate icons for various platforms. The image should be clear and high-resolution.'
                              .i18n,
                          style:
                              TextStyle(fontSize: 14, color: Colors.grey[600]),
                        ),
                      ],
                    ),
                  ),
                  if (_selectedImage != null)
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Image.file(
                        _selectedImage!,
                        width: 128,
                        height: 128,
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 8),
              Center(
                child: ElevatedButton(
                  onPressed: _pickImage,
                  child: Text(_selectedImage == null
                      ? 'Select PNG Image'.i18n
                      : 'Change Image'.i18n),
                ),
              ),
            ],
          ),

          const SizedBox(height: 16.0),
          // Step 2: Select Flutter Project Location
          Text(
            'Step 2: Select the Flutter Project Location'.i18n,
            style: context.theme.textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          Text(
            'Pick the root directory of your Flutter project. Icons will be generated and placed in the appropriate folders for Android, iOS, macOS, Windows, and Web platforms.'
                .i18n,
            style: TextStyle(fontSize: 14, color: Colors.grey[600]),
          ),

          if (_projectPath != null)
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                children: [
                  Text('${'Project Path:'.i18n} '),
                  Expanded(
                      child: Text(
                    '$_projectPath',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: context.theme.colorScheme.primary),
                  )),
                ],
              ),
            ),
          16.height,
          Center(
            child: ElevatedButton(
              onPressed: _pickProjectPath,
              child: Text(_projectPath == null
                  ? 'Select Flutter Project'.i18n
                  : 'Change Project Path'.i18n),
            ),
          ),
          24.height,
          // Step 3: Generate Icons
          Text(
            'Step 3: Generate Icons'.i18n,
            style: context.theme.textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          Text(
            'Click the "Generate Icons" button to create icons for each platform. Make sure you have selected a valid PNG image and Flutter project location before proceeding.'
                .i18n,
            style: TextStyle(fontSize: 14, color: Colors.grey[600]),
          ),
          const SizedBox(height: 16),
          Center(
            child: ElevatedButton(
              onPressed: (_selectedImage != null &&
                      _projectPath != null &&
                      !_isGenerating)
                  ? _generateIcons
                  : null,
              child: _isGenerating
                  ? const CircularProgressIndicator()
                  : Text('Generate Icons'.i18n),
            ),
          ),
          16.height,
          DottedBorder(
            dashPattern: const [4, 4],
            borderType: BorderType.RRect,
            strokeWidth: .5,
            radius: const Radius.circular(5),
            color: context.theme.dividerColor,
            child: Opacity(
              opacity: .5,
              child: Container(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('The following folders will be changed.'.i18n),
                    const Text('<Flutter_Project_Location>\n'
                        '├── android/app/src/main/res/\n'
                        '│   ├── mipmap-mdpi/\n'
                        '│   ├── mipmap-hdpi/\n'
                        '│   ├── mipmap-xhdpi/\n'
                        '│   ├── mipmap-xxhdpi/\n'
                        '│   └── mipmap-xxxhdpi/\n'
                        '├── ios/Runner/Assets.xcassets/AppIcon.appiconset/\n'
                        '├── macos/Runner/Assets.xcassets/AppIcon.appiconset/\n'
                        '├── windows/runner/resources/\n'
                        '└── web/icons/\n'),
                  ],
                ),
              ),
            ),
          ),
          16.height,

          const Divider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${'Resources'.i18n}:',
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              8.height,
              InkWell(
                onTap: () =>
                    openUrl(OnlineDirectory.howToCustomizeIconOnAndroid),
                child: Text(
                  'How do I remove the unwanted white border around my app icon on Android devices?'
                      .i18n,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Function to pick a PNG image
  Future<void> _pickImage() async {
    final pickedFile = await _imagePicker.pickImage(
        source: ImageSource.gallery, imageQuality: 100);
    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
      });
    }
  }

  // Function to pick the Flutter project location
  Future<void> _pickProjectPath() async {
    final result = await FilePicker.platform.getDirectoryPath();
    if (result != null) {
      setState(() {
        _projectPath = result;
      });
    }
  }

  // Function to generate icons for all platforms
  Future<void> _generateIcons() async {
    setState(() {
      _isGenerating = true;
    });

    try {
      if (_selectedImage == null || _projectPath == null) return;

      final image = img.decodeImage(_selectedImage!.readAsBytesSync());
      if (image == null) {
        throw Exception('Unable to decode the image.');
      }

      // Generate icons for each platform
      await _generateAndroidIcons(image);
      await _generateIosIcons(image);
      await _generateMacosIcons(image);
      await _generateWindowsIcons(image);
      await _generateWebIcons(image);

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Icons generated successfully!')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: ${e.toString()}')),
      );
    } finally {
      setState(() {
        _isGenerating = false;
      });
    }
  }

  Future<void> _generateAndroidIcons(img.Image image) async {
    final androidResPath =
        p.join(_projectPath!, 'android', 'app', 'src', 'main', 'res');
    final androidSizes = {
      'mipmap-mdpi': 48,
      'mipmap-hdpi': 72,
      'mipmap-xhdpi': 96,
      'mipmap-xxhdpi': 144,
      'mipmap-xxxhdpi': 192,
    };

    for (final entry in androidSizes.entries) {
      final resized =
          img.copyResize(image, width: entry.value, height: entry.value);
      final outputDir = Directory(p.join(androidResPath, entry.key));
      outputDir.createSync(recursive: true);
      final outputFile = File(p.join(outputDir.path, 'ic_launcher.png'));
      outputFile.writeAsBytesSync(img.encodePng(resized));
    }
  }

  Future<void> _generateIosIcons(img.Image image) async {
    final iosAssetsPath = p.join(_projectPath!, 'ios', 'Runner',
        'Assets.xcassets', 'AppIcon.appiconset');
    final iosSizes = {
      'Icon-App-60x60@3x.png': 180,
      'Icon-App-60x60@2x.png': 120,
      'Icon-App-29x29@3x.png': 87,
      'Icon-App-29x29@2x.png': 58,
      'Icon-App-40x40@2x.png': 80,
      'Icon-App-40x40@3x.png': 120,
      'Icon-App-83.5x83.5@2x.png': 167,
      'Icon-App-1024x1024@1x.png': 1024,
    };

    for (final entry in iosSizes.entries) {
      final resized =
          img.copyResize(image, width: entry.value, height: entry.value);
      final outputFile = File(p.join(iosAssetsPath, entry.key));
      outputFile.createSync(recursive: true);
      outputFile.writeAsBytesSync(img.encodePng(resized));
    }
  }

  Future<void> _generateMacosIcons(img.Image image) async {
    final macosAssetsPath = p.join(_projectPath!, 'macos', 'Runner',
        'Assets.xcassets', 'AppIcon.appiconset');
    final macosSizes = {
      'app_icon_16.png': 16,
      'app_icon_32.png': 32,
      'app_icon_64.png': 64,
      'app_icon_128.png': 128,
      'app_icon_256.png': 256,
      'app_icon_512.png': 512,
      'app_icon_1024.png': 1024,
    };

    for (final entry in macosSizes.entries) {
      final resized =
          img.copyResize(image, width: entry.value, height: entry.value);
      final outputFile = File(p.join(macosAssetsPath, entry.key));
      outputFile.createSync(recursive: true);
      outputFile.writeAsBytesSync(img.encodePng(resized));
    }
  }

  Future<void> _generateWindowsIcons(img.Image image) async {
    final windowsResPath =
        p.join(_projectPath!, 'windows', 'runner', 'resources');
    final outputDir = Directory(windowsResPath);
    outputDir.createSync(recursive: true);

    // Required ICO sizes
    final windowsSizes = [256];
    List<List<int>> pngDataList = [];

    // Resize images and save them as PNG data
    for (final size in windowsSizes) {
      final resized = img.copyResize(image, width: size, height: size);
      final pngData = img.encodePng(resized);
      pngDataList.add(pngData);
    }

    // Create ICO file and save it
    final outputFile = File(p.join(outputDir.path, 'app_icon.ico'));
    final icoData = _createIcoFile(pngDataList);
    outputFile.writeAsBytesSync(icoData);
  }

// Function to manually create ICO file format
  List<int> _createIcoFile(List<List<int>> pngDataList) {
    final int numImages = pngDataList.length;
    final List<int> fileData = [];

    // Write ICO header
    fileData.addAll([0, 0]); // Reserved
    fileData.addAll([1, 0]); // ICO type
    fileData.addAll([numImages, 0]); // Number of images

    // Calculate the image data offsets
    int offset = 6 + (16 * numImages);
    final List<int> imageData = [];

    for (int i = 0; i < numImages; i++) {
      final pngData = pngDataList[i];
      final width = pngDataList[i][16]; // Get width from PNG header
      final height = pngDataList[i][20]; // Get height from PNG header
      final dataSize = pngData.length;

      // Write the directory entry for each image
      fileData.add(width); // Image width
      fileData.add(height); // Image height
      fileData.add(0); // Number of colors in palette (0 for PNG)
      fileData.add(0); // Reserved
      fileData.addAll([1, 0]); // Color planes (1)
      fileData.addAll([32, 0]); // Bits per pixel (32 for PNG)
      fileData.addAll(_intToBytes(dataSize, 4)); // Image data size
      fileData.addAll(_intToBytes(offset, 4)); // Image data offset

      // Append image data to the main data list
      imageData.addAll(pngData);
      offset += dataSize;
    }

    // Combine header and image data
    fileData.addAll(imageData);

    return fileData;
  }

// Helper function to convert integer to byte list (little-endian)
  List<int> _intToBytes(int value, int length) {
    final List<int> result = List<int>.filled(length, 0);
    for (int i = 0; i < length; i++) {
      result[i] = (value >> (8 * i)) & 0xFF;
    }
    return result;
  }

  Future<void> _generateWebIcons(img.Image image) async {
    final webIconsPath = p.join(_projectPath!, 'web', 'icons');
    final webSizes = {
      'favicon.png': 16,
      'icon-32.png': 32,
      'icon-192.png': 192,
      'icon-512.png': 512,
    };

    for (final entry in webSizes.entries) {
      final resized =
          img.copyResize(image, width: entry.value, height: entry.value);
      final outputFile = File(p.join(webIconsPath, entry.key));
      outputFile.createSync(recursive: true);
      outputFile.writeAsBytesSync(img.encodePng(resized));
    }
  }
}
