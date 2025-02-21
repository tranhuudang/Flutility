import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutility/src/core/core.dart';
import 'dart:io';
import 'package:image/image.dart' as img;
import 'package:path/path.dart' as path;

class ImageCompressScreen extends StatefulWidget {
  const ImageCompressScreen({super.key});

  @override
  State<ImageCompressScreen> createState() => _ImageCompressScreenState();
}

class _ImageCompressScreenState extends State<ImageCompressScreen> {
  List<File> _selectedFiles = [];
  String? _outputDirectory;
  bool _isCompressing = false;
  double _quality = 50; // Variable to control image quality, default to 50

  // Function to pick images (single or multiple)
  Future<void> _pickFiles() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'jpeg', 'png'],
      allowMultiple: true,
    );

    if (result != null) {
      setState(() {
        _selectedFiles =
            result.paths.map((filePath) => File(filePath!)).toList();
      });
    }
  }

  // Function to pick an output directory
  Future<void> _pickOutputDirectory() async {
    String? directoryPath = await FilePicker.platform.getDirectoryPath();
    if (directoryPath != null) {
      setState(() {
        _outputDirectory = directoryPath;
      });
    }
  }

  // Function to remove an image from the list
  void _removeImage(int index) {
    setState(() {
      _selectedFiles.removeAt(index);
    });
  }

  // Function to compress images using `image` package
  Future<void> _compressImages() async {
    if (_selectedFiles.isEmpty || _outputDirectory == null) return;

    setState(() {
      _isCompressing = true;
    });

    for (File file in _selectedFiles) {
      final image = img.decodeImage(file.readAsBytesSync());
      if (image != null) {
        // Compress the image by re-encoding it with the selected quality
        final compressedImage = img.encodeJpg(image, quality: _quality.toInt());

        // Save the compressed image to the selected output directory
        final outputPath = path.join(
            _outputDirectory!, 'compressed_${path.basename(file.path)}');
        File(outputPath).writeAsBytesSync(compressedImage);
        DebugLog.info('Compressed image saved at $outputPath');
      }
    }

    setState(() {
      _isCompressing = false;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Compression completed!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const Icon(Icons.compress),
          title:  Text('Image Compression'.i18n)),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Guidance Text
          Text(
            'Step 1: Pick Images to Compress'.i18n,
            style: context.theme.textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
           Text(
            'You can select multiple JPG or PNG images to compress. Click the button below to start.'.i18n,
            style: const TextStyle(fontSize: 14, color: Colors.grey),
          ),
          const SizedBox(height: 16),

          // Button to pick images
          Center(
            child: ElevatedButton.icon(
              onPressed: _pickFiles,
              icon: const Icon(Icons.image),
              label:  Text('Pick Images'.i18n),
            ),
          ),
          const SizedBox(height: 20),

          // Divider to separate sections
          const Divider(),
          const SizedBox(height: 10),

          // Guidance Text for selected images
          Text(
            'Selected Images'.i18n,
            style: context.theme.textTheme.titleMedium,
          ),
          const SizedBox(height: 10),

          // Display selected images with a close button
          _selectedFiles.isEmpty
              ?  Center(
                  child: Text(
                    'No images selected.'.i18n,
                    style: const TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                )
              : ListView.builder(
                  shrinkWrap: true,
                  itemCount: _selectedFiles.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 2,
                      margin: const EdgeInsets.symmetric(vertical: 1),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8, bottom: 8),
                        child: ListTile(
                          leading: Image.file(
                            File(_selectedFiles[index].path),
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          title: Text(
                            path.basename(_selectedFiles[index].path),
                            overflow: TextOverflow.ellipsis,
                          ),
                          trailing: IconButton(
                            icon: const Icon(Icons.close),
                            onPressed: () => _removeImage(index),
                          ),
                        ),
                      ),
                    );
                  },
                ),
          const SizedBox(height: 20),

          // Slider guidance text
          Text(
            'Step 2: Adjust Quality of Compression'.i18n,
            style: context.theme.textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
           Text(
            'Use the slider below to set the quality for compression (0 = low quality, 100 = high quality).'.i18n,
            style: const TextStyle(fontSize: 14, color: Colors.grey),
          ),
          const SizedBox(height: 10),

          // Slider to control the quality of the image
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Text('Quality:'.i18n),
              Expanded(
                child: Slider(
                  value: _quality,
                  min: 0,
                  max: 100,
                  divisions: 100,
                  label: _quality.round().toString(),
                  onChanged: (value) {
                    setState(() {
                      _quality = value;
                    });
                  },
                ),
              ),
              Text('${_quality.round()}%'),
            ],
          ),
          const SizedBox(height: 20),

          // Divider to separate sections
          const Divider(),
          const SizedBox(height: 10),

          // Button to pick output directory
          Text(
            'Step 3: Choose Output Directory'.i18n,
            style: context.theme.textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          Center(
            child: ElevatedButton.icon(
              onPressed: _pickOutputDirectory,
              icon: const Icon(Icons.folder_open),
              label:  Text('Select Output Directory'.i18n),
            ),
          ),
          if (_outputDirectory != null)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                '${'Output Directory'.i18n}: $_outputDirectory',
                style: const TextStyle(color: Colors.green, fontSize: 14),
              ),
            ),
          const SizedBox(height: 20),

          // Divider to separate sections
          const Divider(),
          const SizedBox(height: 10),

          // Button to compress images
          Text(
            'Step 4: Compress Images'.i18n,
            style: context.theme.textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          Center(
            child: ElevatedButton.icon(
              onPressed: _isCompressing ? null : _compressImages,
              icon: _isCompressing
                  ? const CircularProgressIndicator(
                      color: Colors.white, strokeWidth: 2)
                  : const Icon(Icons.compress),
              label:  Text('Compress Images'.i18n),
            ),
          ),
        ],
      ),
    );
  }
}
