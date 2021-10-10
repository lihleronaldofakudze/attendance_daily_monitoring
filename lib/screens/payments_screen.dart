import 'package:flutter/material.dart';

class PaymentsScreen extends StatelessWidget {
  const PaymentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade100,
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: Text('Anju Siima Technologies Pvt.Ltd.'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment History',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: CircleAvatar(
                child: Text(
                  'K',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              title: Text('K Anilbabu'),
              subtitle:
                  Text('27th Sep21', style: TextStyle(color: Colors.grey)),
              trailing: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'Advance\n', style: TextStyle(color: Colors.grey)),
                TextSpan(
                    text: '-R 5,000\n', style: TextStyle(color: Colors.red))
              ])),
            ),
            Text('Advance'),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Text(
                  'K',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              title: Text('K Anilbabu'),
              subtitle:
                  Text('27th Sep21', style: TextStyle(color: Colors.grey)),
              trailing: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'Advance\n', style: TextStyle(color: Colors.grey)),
                TextSpan(
                    text: '-R 5,000\n', style: TextStyle(color: Colors.red))
              ])),
            ),
            Text('Advance'),
            Divider(),
          ],
        ),
      ),
    );
  }
}
