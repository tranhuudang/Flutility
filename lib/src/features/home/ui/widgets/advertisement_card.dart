import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutility/src/app/app.dart';
import 'package:flutility/src/features/home/data/utils/model/terrace_advertise.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:marina_labs_common/marina_labs_common.dart';

class AdvertisementCard extends StatefulWidget {
  final TerraceAdvertise ad;
  final bool isEditorMode;
  const AdvertisementCard(
      {super.key, required this.ad, this.isEditorMode = false});

  @override
  State<AdvertisementCard> createState() => _AdvertisementCardState();
}

class _AdvertisementCardState extends State<AdvertisementCard> {
  @override
  Widget build(BuildContext context) {
    return _buildAdvertisementCard(widget.ad, widget.isEditorMode);
  }

  Widget _buildAdvertisementCard(TerraceAdvertise ad, bool isEditorMode) {
    return InkWell(
      borderRadius: BorderRadius.circular(5),
      onTap: () {
        openUrl(ad.link);
      },
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              border:
                  Border.all(color: context.theme.dividerColor.withOpacity(.5)),
              borderRadius: BorderRadius.circular(5)),
          child: Stack(
            children: [
              SizedBox(
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        if (ad.iconUrl.isNotEmpty)
                          Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: CachedNetworkImage(
                              imageUrl: ad.iconUrl,
                              width: 40,
                              height: 40,
                              fit: BoxFit.cover,
                            ),
                          ),
                        Expanded(
                          child: Text(
                            ad.title,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      ad.description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: context.theme.colorScheme.onSurface
                            .withOpacity(0.7),
                      ),
                    ),
                    const Spacer(),
                    if (ad.previewImage != null && ad.previewImage!.isNotEmpty)
                      Container(
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: DecorationImage(
                            image: NetworkImage(ad.previewImage!),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              if (isEditorMode) ...[
                // Edit button for editors

                Positioned(
                  top: 0,
                  right: 0,
                  child: Material(
                    color: Colors.transparent,
                    child: IconButton(
                      icon: const Icon(Icons.edit, size: 18),
                      onPressed: () => _showEditAdDialog(context, ad),
                      tooltip: 'Edit Advertisement'.i18n,
                      constraints: const BoxConstraints(),
                      padding: const EdgeInsets.all(8),
                    ),
                  ),
                ),

                // Active/Inactive indicator for editors

                Positioned(
                  bottom: 4,
                  right: 4,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: (ad.isActive ?? true)
                          ? Colors.green.withOpacity(0.8)
                          : Colors.red.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      (ad.isActive ?? true) ? 'Active'.i18n : 'Inactive'.i18n,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                // Date indicator for editors
                if (ad.startDate != null || ad.endDate != null)
                  Positioned(
                    bottom: 4,
                    left: 4,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color:
                            context.theme.colorScheme.primary.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        ad.endDate != null
                            ? 'Expires: ${DateFormat('MM/dd').format(ad.endDate!)}'
                                .i18n
                            : ad.startDate != null
                                ? 'From: ${DateFormat('MM/dd').format(ad.startDate!)}'
                                    .i18n
                                : 'No Date Limit'.i18n,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _showEditAdDialog(
      BuildContext context, TerraceAdvertise ad) async {
    final titleController = TextEditingController(text: ad.title);
    final descriptionController = TextEditingController(text: ad.description);
    final iconUrlController = TextEditingController(text: ad.iconUrl);
    final linkController = TextEditingController(text: ad.link);
    final previewImageController =
        TextEditingController(text: ad.previewImage ?? '');
    final orderController = TextEditingController(text: ad.order.toString());
    bool isActive = ad.isActive ?? true;
    DateTime? startDate = ad.startDate;
    DateTime? endDate = ad.endDate;

    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text('Edit Advertisement'.i18n),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: titleController,
                decoration: InputDecoration(
                  labelText: 'Title'.i18n,
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: descriptionController,
                decoration: InputDecoration(
                  labelText: 'Description'.i18n,
                  border: const OutlineInputBorder(),
                ),
                maxLines: 3,
              ),
              const SizedBox(height: 16),
              TextField(
                controller: iconUrlController,
                decoration: InputDecoration(
                  labelText: 'Icon URL'.i18n,
                  border: const OutlineInputBorder(),
                  hintText: 'https://example.com/icon.png',
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: linkController,
                decoration: InputDecoration(
                  labelText: 'Link'.i18n,
                  border: const OutlineInputBorder(),
                  hintText: 'https://example.com or /route/name',
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: previewImageController,
                decoration: InputDecoration(
                  labelText: 'Preview Image URL (Optional)'.i18n,
                  border: const OutlineInputBorder(),
                  hintText: 'https://example.com/preview.png',
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: orderController,
                decoration: InputDecoration(
                  labelText: 'Display Order'.i18n,
                  border: const OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 16),
              StatefulBuilder(
                builder: (context, setState) => SwitchListTile(
                  title: Text('Active'.i18n),
                  value: isActive,
                  onChanged: (value) {
                    setState(() {
                      isActive = value;
                    });
                  },
                ),
              ),
              const SizedBox(height: 8),
              Text('Date Range (Optional)'.i18n,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: StatefulBuilder(
                      builder: (context, setState) => ListTile(
                        title: Text(startDate != null
                            ? DateFormat('yyyy-MM-dd').format(startDate!)
                            : 'Start Date (Optional)'.i18n),
                        onTap: () async {
                          final date = await showDatePicker(
                            context: context,
                            initialDate: startDate ?? DateTime.now(),
                            firstDate: DateTime.now()
                                .subtract(const Duration(days: 365)),
                            lastDate: DateTime.now()
                                .add(const Duration(days: 365 * 2)),
                          );
                          if (date != null) {
                            setState(() {
                              startDate = date;
                            });
                          }
                        },
                        trailing: startDate != null
                            ? IconButton(
                                icon: const Icon(Icons.clear),
                                onPressed: () {
                                  setState(() {
                                    startDate = null;
                                  });
                                },
                              )
                            : const Icon(Icons.calendar_today),
                      ),
                    ),
                  ),
                  Expanded(
                    child: StatefulBuilder(
                      builder: (context, setState) => ListTile(
                        title: Text(endDate != null
                            ? DateFormat('yyyy-MM-dd').format(endDate!)
                            : 'End Date (Optional)'.i18n),
                        onTap: () async {
                          final date = await showDatePicker(
                            context: context,
                            initialDate: endDate ??
                                DateTime.now().add(const Duration(days: 30)),
                            firstDate: DateTime.now(),
                            lastDate: DateTime.now()
                                .add(const Duration(days: 365 * 2)),
                          );
                          if (date != null) {
                            setState(() {
                              endDate = date;
                            });
                          }
                        },
                        trailing: endDate != null
                            ? IconButton(
                                icon: const Icon(Icons.clear),
                                onPressed: () {
                                  setState(() {
                                    endDate = null;
                                  });
                                },
                              )
                            : const Icon(Icons.calendar_today),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => _showDeleteConfirmation(dialogContext, ad),
            child:
                Text('Delete'.i18n, style: const TextStyle(color: Colors.red)),
          ),
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: Text('Cancel'.i18n),
          ),
          ElevatedButton(
            onPressed: () {
              if (titleController.text.isEmpty ||
                  descriptionController.text.isEmpty ||
                  iconUrlController.text.isEmpty ||
                  linkController.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Please fill in all required fields'.i18n)));
                return;
              }

              _updateAd(
                id: ad.id,
                title: titleController.text,
                description: descriptionController.text,
                iconUrl: iconUrlController.text,
                link: linkController.text,
                previewImage: previewImageController.text.isNotEmpty
                    ? previewImageController.text
                    : null,
                order: int.tryParse(orderController.text) ?? 0,
                isActive: isActive,
                startDate: startDate,
                endDate: endDate,
              ).then((_) => Navigator.pop(dialogContext));
            },
            child: Text('Update'.i18n),
          ),
        ],
      ),
    );
  }

  Future<void> _updateAd({
    required String id,
    required String title,
    required String description,
    required String iconUrl,
    required String link,
    String? previewImage,
    required int order,
    required bool isActive,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    try {
      final docRef =
          FirebaseFirestore.instance.collection("Advertisements").doc(id);

      final adData = {
        'title': title,
        'description': description,
        'iconUrl': iconUrl,
        'link': link,
        'order': order,
        'isActive': isActive,
        'updatedAt': FieldValue.serverTimestamp(),
      };

      if (previewImage != null && previewImage.isNotEmpty) {
        adData['previewImage'] = previewImage;
      } else {
        // Remove previewImage field if it's empty
        adData['previewImage'] = FieldValue.delete();
      }

      if (startDate != null) {
        adData['startDate'] = Timestamp.fromDate(startDate);
      } else {
        // Remove startDate field if it's not set
        adData['startDate'] = FieldValue.delete();
      }

      if (endDate != null) {
        adData['endDate'] = Timestamp.fromDate(endDate);
      } else {
        // Remove endDate field if it's not set
        adData['endDate'] = FieldValue.delete();
      }

      await docRef.update(adData);
      DebugLog.info('Updated advertisement with ID: $id');

      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Advertisement updated successfully'.i18n)));
    } catch (e) {
      DebugLog.error('Error updating advertisement: ${e.toString()}');
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Error updating advertisement: ${e.toString()}'.i18n)));
    }
  }

  Future<void> _showDeleteConfirmation(
      BuildContext context, TerraceAdvertise ad) {
    return showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text('Delete Advertisement?'.i18n),
        content: Text(
            'Are you sure you want to delete this advertisement? This action cannot be undone.'
                .i18n),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: Text('Cancel'.i18n),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              _deleteAd(ad.id).then((_) {
                // Close both dialogs
                Navigator.pop(dialogContext);
                Navigator.pop(context);
              });
            },
            child: Text('Delete'.i18n),
          ),
        ],
      ),
    );
  }

  Future<void> _deleteAd(String id) async {
    try {
      await FirebaseFirestore.instance
          .collection('Advertisements')
          .doc(id)
          .delete();

      DebugLog.info('Deleted advertisement with ID: $id');

      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Advertisement deleted successfully'.i18n)));
    } catch (e) {
      DebugLog.error('Error deleting advertisement: ${e.toString()}');
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Error deleting advertisement: ${e.toString()}'.i18n)));
    }
  }
}
