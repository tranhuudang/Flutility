import 'package:marina_labs_common/marina_labs_common.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutility/src/features/presentation.dart';
import 'package:flutility/src/app/app.dart';
import 'package:flutility/generated/l10n.dart';

class InfoView extends StatelessWidget {
  const InfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: isDesktop || isWebDesktop
            ? const Icon(FluentIcons.info_16_regular)
            : const ChevronBackButton(),
        title: Text(S.of(context).about),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildAboutSection(context),
          _buildLicensesSection(context),
          _buildPrivacyPolicySection(context),
          30.height,
        ],
      ),
    );
  }

  // Extract About section to improve readability
  Widget _buildAboutSection(BuildContext context) {
    return Section(
      title: S.of(context).about,
      children: [
        Column(
          children: [
            const Image(
              image: AssetImage(LocalDirectory.appLogo),
              height: 90,
            ),
            8.height,
            Text(
              DefaultSettings.appName,
              style: context.theme.textTheme.titleLarge?.copyWith(
                  color: context.theme.colorScheme.onSurface,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        8.height,
        TextButton(
          child: Text('${DateTime.now().year}.$appVersion'),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ReleaseNotesView()));
          },
        ),
        8.height,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildIconButton(
                icon: const FaIcon(
                  FontAwesomeIcons.linkedin,
                  size: 20,
                ),
                url: OnlineDirectoryBase.linkedinUrl),
            _buildIconButton(
                icon: const FaIcon(
                  FontAwesomeIcons.github,
                  size: 20,
                ),
                url: OnlineDirectoryBase.githubURL),
            _buildIconButton(
                icon: const Icon(Icons.mail),
                url: OnlineDirectoryBase.email),
          ],
        ),
        8.height,
        Text(
          "© ${DateTime.now().year} Marina Labs. ${S.of(context).allRightsReserved}",
          style: context.theme.textTheme.bodyMedium
              ?.copyWith(color: context.theme.colorScheme.onSurfaceVariant),
        ),
      ],
    );
  }

  // Extract Licenses section
  Widget _buildLicensesSection(BuildContext context) {
    return Section(
      title: S.of(context).licenses,
      isExpand: false,
      children: [
        Text(
          S.of(context).descriptiontextforlicenses,
          style: context.theme.textTheme.bodyMedium
              ?.copyWith(color: context.theme.colorScheme.onSurface),
        ),
        8.height,
        FilledButton.tonal(
            onPressed: () {
              showLicensePage(context: context);
            },
            child: Text(S.of(context).licenses)),
      ],
    );
  }

  // Extract Privacy Policy section
  Widget _buildPrivacyPolicySection(BuildContext context) {
    return Section(
      title: S.of(context).privacyPolicy,
      crossAxisAlignment: CrossAxisAlignment.start,
      isExpand: false,
      children: [
        Text(
          S.of(context).desciptiontextforprivacypolicy,
          style: context.theme.textTheme.bodyMedium
              ?.copyWith(color: context.theme.colorScheme.onSurface),
        ),
        4.height,
        Text(
          S.of(context).forMoreInformationAboutOurPrivacyPolicyPleaseVisit,
          style: context.theme.textTheme.bodyMedium
              ?.copyWith(color: context.theme.colorScheme.onSurface),
        ),
        8.height,
        Center(
          child: _buildFilledButton(
              url: OnlineDirectory.privacyPolicyURL,
              text: S.of(context).privacyPolicy),
        )
      ],
    );
  }

  // Helper function to create IconButtons with URL launching
  Widget _buildIconButton({required Icon icon, required String url}) {
    return IconButton(
        onPressed: () async {
          final Uri uri = Uri.parse(url);
          if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
            throw Exception('Could not launch $uri');
          }
        },
        icon: icon);
  }

  // Helper function to create FilledButtons with URL launching
  Widget _buildFilledButton({required String url, required String text}) {
    return FilledButton.tonal(
        onPressed: () async {
          final Uri uri = Uri.parse(url);
          if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
            throw Exception('Could not launch $uri');
          }
        },
        child: Text(text));
  }
}
