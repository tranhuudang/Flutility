import 'package:flutter_toolkits/src/core/core.dart';
import 'package:flutter_toolkits/src/presentation/presentation.dart';

class BugDetailsScreen extends StatelessWidget {
  final String feedbackText;
  final String? imageUrl;
  final List<String> upvotes;
  final List<String> downvotes;
  final String? status;
  final DateTime? timestamp;

  const BugDetailsScreen({
    super.key,
    required this.feedbackText,
    required this.imageUrl,
    required this.upvotes,
    required this.downvotes,
    required this.status,
    required this.timestamp,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const ChevronBackButton(),
        title: Text('Bug Details'.i18n),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                feedbackText,
              ),
              const SizedBox(height: 16),
              if (imageUrl != null && imageUrl!.isNotEmpty)
                Image.network(
                  imageUrl!,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return const CircularProgressIndicator();
                  },
                  errorBuilder: (context, error, stackTrace) => Text(
                    'Failed to load image'.i18n,
                    style: const TextStyle(color: Colors.red),
                  ),
                ),
              const SizedBox(height: 16),
              Opacity(
                opacity: .5,
                child: Text(
                  '${'Submitted on'.i18n}: ${timestamp?.toString() ?? 'Unknown date'}',
                ),
              ),
              const SizedBox(height: 16),

            ],
          ),
        ),
      ),bottomNavigationBar: Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: context.theme.dividerColor
                , width: .3
          )
        )
      ),
      height: kBottomNavigationBarHeight,
      child:Row(
        children: [
          16.width,
          const Icon(Icons.thumb_up),
          const SizedBox(width: 8),
          Text('${upvotes.length}'),
          const SizedBox(width: 16),
          const Icon(Icons.thumb_down),
          const SizedBox(width: 8),
          Text('${downvotes.length}'),
        ],
      ),
    ),
    );
  }
}
