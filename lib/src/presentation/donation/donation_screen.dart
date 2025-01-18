import 'package:flutter/material.dart';
import 'package:flutter_toolkits/app.dart';

class DonationScreen extends StatefulWidget {
  const DonationScreen({super.key});

  @override
  State<DonationScreen> createState() => _DonationScreenState();
}

class _DonationScreenState extends State<DonationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Development Fund'),),
      body: Column(
        children: [
          Row(children: [
            Column(
              children: [
                Text('Join the 2%'),
                Text('When 2 percent of users donate, more developers will be supported to work on Ul and tools. Free and Open Source for everyone, forever.'),
              ],
            ),
            Column(
              children: [],
            )
          ],)
        ],
      ),
    );
  }
}
