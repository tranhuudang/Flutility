import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toolkits/src/core/core.dart';
import 'package:flutter_toolkits/src/presentation/donation/widgets/paypal_donation_widget.dart';

import '../shared/ui/widgets/divider_with_text.dart';

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
        title:  Text('Development Fund'.i18n),
      ),
      body: Center(
        child: SizedBox(
          width: 700,
          height: 500,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Join the 2%'.i18n,
                              style: const TextStyle(
                                  fontSize: 26, fontWeight: FontWeight.bold)),
                          4.height,
                          Text(
                              'description-donation'.i18n,
                              style:
                                  const TextStyle(fontSize: 16, color: Colors.grey)),
                        ],
                      ),
                    ),
                    8.width,
                    Expanded(
                      child: Column(
                        children: [
                          SizedBox(
                            width: 156,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child:
                                    Image.asset('assets/donation/bmc_qr.png')),
                          ),
                          const SizedBox(height: 20),
                          DividerWithText(text: 'or'.i18n),
                          8.height,
                          const PaypalDonationWidget(),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
