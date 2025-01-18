import 'package:flutter/material.dart';
import 'package:flutter_toolkits/src/core/core.dart';
import 'package:url_launcher/url_launcher.dart';

class PaypalDonationWidget extends StatefulWidget {
  const PaypalDonationWidget({super.key});

  @override
  _PaypalDonationWidgetState createState() => _PaypalDonationWidgetState();
}

class _PaypalDonationWidgetState extends State<PaypalDonationWidget> {
  int selectedNumber = 1;
  final List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 100];
  final List<String> descriptions = [
    'cup of coffee',
    'cups of coffee',
    'cups of coffee',
    'cups of coffee',
    'cups of coffee',
    'cups of coffee',
    'cups of coffee',
    'cups of coffee',
    'cups of coffee',
    'cups of coffee',
    'A generous soul',
    'A generous soul',
    'A generous soul',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DropdownButton<int>(
                  value: selectedNumber,
                  onChanged: (int? newValue) {
                    setState(() {
                      selectedNumber = newValue!;
                    });
                  },
                  items: numbers.map<DropdownMenuItem<int>>((int value) {
                    return DropdownMenuItem<int>(
                      value: value,
                      child: Text(value.toString()),
                    );
                  }).toList(),
                ),
                4.width,
                if (selectedNumber != 100)
                  Text(descriptions[selectedNumber - 1]),
                if (selectedNumber == 100) Text(descriptions[10]),
              ],
            ),
            const SizedBox(height: 10),
            Text('${'Total amount'.i18n}: ${8 * selectedNumber}\$'),
          ],
        ),
        16.height,
        InkWell(
            onTap: () {
              String paypalLink = '';
              switch (selectedNumber) {
                case 1:
                  paypalLink =
                  'https://www.paypal.com/invoice/p/#U7UW63HCS7ZUQE8Y';
                  break;
                case 2:
                  paypalLink =
                  'https://www.paypal.com/invoice/p/#NDFW4WWVTKVPSHD6';
                  break;
                case 3:
                  paypalLink =
                  'https://www.paypal.com/invoice/p/#QF6BPPGEGKWTTMZY';
                  break;
                case 4:
                  paypalLink =
                  'https://www.paypal.com/invoice/p/#76C4D6FWFM6HU9UR';
                  break;
                case 5:
                  paypalLink =
                  'https://www.paypal.com/invoice/p/#D2WPZHU2TX8FTB4D';
                  break;
                case 6:
                  paypalLink =
                  'https://www.paypal.com/invoice/p/#VL8NFDESMY5FLMYD';
                  break;
                case 7:
                  paypalLink =
                  'https://www.paypal.com/invoice/p/#9HLLLZ8WGZWH5CEN';
                  break;
                case 8:
                  paypalLink =
                  'https://www.paypal.com/invoice/p/#F2MLE9FQ4ZGYFXAY';
                  break;
                case 9:
                  paypalLink =
                  'https://www.paypal.com/invoice/p/#MDL2P59R2UC4B288';
                  break;
                case 10:
                  paypalLink =
                  'https://www.paypal.com/invoice/p/#E33XZUHPYHYNWGAH';
                  break;
                case 100:
                  paypalLink =
                  'https://www.paypal.com/invoice/p/#QM9GNBELCDXTEE5K';
                  break;
              }
              _launchURL(paypalLink);
            },
            child: Container(
                width: 156,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                child: Image.asset(
                  'assets/donation/paypal-donate-button.png',
                ))),
      ],
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
