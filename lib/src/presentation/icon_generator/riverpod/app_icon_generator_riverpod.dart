import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutility/src/app/app.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image/image.dart' as img;
import 'package:path/path.dart' as p;
import 'package:image_picker/image_picker.dart';
part 'app_icon_generator_riverpod.freezed.dart';

final appIconGeneratorProvider =
    StateNotifierProvider<AppIconGenerator, AppIconGeneratorState>((ref) {
  return AppIconGenerator();
});

@freezed
class AppIconGeneratorState with _$AppIconGeneratorState {
  const factory AppIconGeneratorState({
    required bool isGenerating,
    required bool isGenerateSuccess,
    required bool isGenerateError,
    required bool generateForAndroid,
    required bool generateForIos,
    required bool generateForMacos,
    required bool generateForWeb,
    required bool generateForWindows,
    required String projectPath,
    required File? selectedImage,
  }) = _AppIconGeneratorState;

  factory AppIconGeneratorState.initial() {
    final settings = Properties.instance.settings;
    return AppIconGeneratorState(
      isGenerating: false,
      isGenerateSuccess: false,
      isGenerateError: false,
      generateForAndroid: settings.isGenerateForAndroid,
      generateForIos: settings.isGenerateForIOs,
      generateForMacos: settings.isGenerateForMacOs,
      generateForWeb: settings.isGenerateForWeb,
      generateForWindows: settings.isGenerateForWindows,
      projectPath: '',
      selectedImage: null,
    );
  }
}

class AppIconGenerator extends StateNotifier<AppIconGeneratorState> {
  AppIconGenerator() : super(AppIconGeneratorState.initial()) {
    // init something
  }
  final ImagePicker _imagePicker = ImagePicker();

  // Function to pick a PNG image
  Future<void> pickImage() async {
    final pickedFile = await _imagePicker.pickImage(
        source: ImageSource.gallery, imageQuality: 100);
    if (pickedFile != null) {
      state = state.copyWith(selectedImage: File(pickedFile.path));
    }
  }

  // Function to pick the Flutter project location
  Future<void> pickProjectPath() async {
    final result = await FilePicker.platform.getDirectoryPath();
    if (result != null) {
      state = state.copyWith(projectPath: result);
    }
  }

  Future<void> setGenerateForAndroid(bool value) async {
    state = state.copyWith(generateForAndroid: value);
  }

  Future<void> setGenerateForIos(bool value) async {
    state = state.copyWith(generateForIos: value);
  }

  Future<void> setGenerateForMacos(bool value) async {
    state = state.copyWith(generateForMacos: value);
  }

  Future<void> setGenerateForWeb(bool value) async {
    state = state.copyWith(generateForWeb: value);
  }

  Future<void> setGenerateForWindows(bool value) async {
    state = state.copyWith(generateForWindows: value);
  }

  // Function to generate icons for all platforms
  Future<void> generateIcons() async {
    state = state.copyWith(
        isGenerating: true, isGenerateSuccess: false, isGenerateError: false);

    // Save new settings
    Properties.instance.saveSettings(Properties.instance.settings.copyWith(
        isGenerateForAndroid: state.generateForAndroid,
        isGenerateForIOs: state.generateForIos,
        isGenerateForMacOs: state.generateForMacos,
        isGenerateForWeb: state.generateForWeb,
        isGenerateForWindows: state.generateForWindows));

    try {
      if (state.selectedImage == null || state.projectPath.isEmpty) return;

      final image = img.decodeImage(state.selectedImage!.readAsBytesSync());
      if (image == null) {
        throw Exception('Unable to decode the image.');
      }

      // Generate icons for each platform
      if (state.generateForAndroid) await _generateAndroidIcons(image);
      if (state.generateForIos) await _generateIosIcons(image);
      if (state.generateForMacos) await _generateMacosIcons(image);
      if (state.generateForWindows) await _generateWindowsIcons(image);
      if (state.generateForWeb) await _generateWebIcons(image);

      state = state.copyWith(isGenerateSuccess: true, isGenerateError: false);
    } catch (e) {
      state = state.copyWith(isGenerateError: true, isGenerateSuccess: false);
    } finally {
      state = state.copyWith(isGenerating: false);
    }
  }

  Future<void> _generateAndroidIcons(img.Image image) async {
    final androidResPath =
        p.join(state.projectPath, 'android', 'app', 'src', 'main', 'res');
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
    final iosAssetsPath = p.join(state.projectPath, 'ios', 'Runner',
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
    final macosAssetsPath = p.join(state.projectPath, 'macos', 'Runner',
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
        p.join(state.projectPath, 'windows', 'runner', 'resources');
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
    final webIconsPath = p.join(state.projectPath, 'web', 'icons');
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
