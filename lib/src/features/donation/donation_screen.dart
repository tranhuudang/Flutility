import 'package:marina_labs_common/marina_labs_common.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutility/src/app/app.dart';

class DonationScreen extends StatefulWidget {
  const DonationScreen({super.key});

  @override
  State<DonationScreen> createState() => _DonationScreenState();
}

class _DonationScreenState extends State<DonationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(FluentIcons.handshake_20_regular),
          title: Text('Development Fund'.i18n),
        ),
        body: const DakSolutionsDonationBody(
          donationArea: DonationArea.international,
          isShowBuyAMeCoffeeQr: true,
          paypalUrl: OnlineDirectoryBase.paypalUrl,
        ));
  }
}
