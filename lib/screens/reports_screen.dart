import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReportsScreen extends StatelessWidget {
  const ReportsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade100,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: Text('K Anilbabu'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.brown,
              child: ListTile(
                title: Text(
                  'Anju Siima Technologies Pvt.Ltd.',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                subtitle: Text(
                  'Reports Period : 01-09-2021 to 27-09-21',
                  style: TextStyle(color: Colors.white70),
                ),
              ),
            ),
            ListTile(
              title: Text('K Anilbabu'),
              subtitle: Text('987654321'),
              trailing: Text(
                '25,000.00',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              color: Colors.black,
              thickness: 1.0,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: 'Full Day ',
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: '- 21',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold))
                      ])),
                      SizedBox(
                        height: 10,
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: 'Half Day ',
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: '- 0',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold))
                      ])),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: 'Paid leaves ',
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: '- 2',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold))
                      ])),
                      SizedBox(
                        height: 10,
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: 'Absent         ',
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: '- 5',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold))
                      ])),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Table(
                border: TableBorder.all(color: Colors.black),
                children: [
                  TableRow(children: [
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Date', style: TextStyle(fontSize: 16.0)),
                      )
                    ]),
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Attendance',
                            style: TextStyle(fontSize: 16.0)),
                      )
                    ]),
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Amount', style: TextStyle(fontSize: 16.0)),
                      )
                    ]),
                  ]),
                  TableRow(children: [
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child:
                            Text('1st Sep', style: TextStyle(fontSize: 16.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child:
                            Text('2st Sep', style: TextStyle(fontSize: 16.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child:
                            Text('3st Sep', style: TextStyle(fontSize: 16.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child:
                            Text('4st Sep', style: TextStyle(fontSize: 16.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child:
                            Text('5st Sep', style: TextStyle(fontSize: 16.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child:
                            Text('6st Sep', style: TextStyle(fontSize: 16.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child:
                            Text('7st Sep', style: TextStyle(fontSize: 16.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child:
                            Text('8st Sep', style: TextStyle(fontSize: 16.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child:
                            Text('9st Sep', style: TextStyle(fontSize: 16.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child:
                            Text('10st Sep', style: TextStyle(fontSize: 16.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child:
                            Text('11st Sep', style: TextStyle(fontSize: 16.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child:
                            Text('12st Sep', style: TextStyle(fontSize: 16.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child:
                            Text('132st Sep', style: TextStyle(fontSize: 16.0)),
                      )
                    ]),
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child:
                            Text('Present', style: TextStyle(fontSize: 16.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child:
                            Text('Present', style: TextStyle(fontSize: 16.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child:
                            Text('Present', style: TextStyle(fontSize: 16.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child:
                            Text('Present', style: TextStyle(fontSize: 16.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child:
                            Text('Present', style: TextStyle(fontSize: 16.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child:
                            Text('Present', style: TextStyle(fontSize: 16.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child:
                            Text('Present', style: TextStyle(fontSize: 16.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child:
                            Text('Present', style: TextStyle(fontSize: 16.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child:
                            Text('Present', style: TextStyle(fontSize: 16.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child:
                            Text('Present', style: TextStyle(fontSize: 16.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child:
                            Text('Present', style: TextStyle(fontSize: 16.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child:
                            Text('Present', style: TextStyle(fontSize: 16.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child:
                            Text('Present', style: TextStyle(fontSize: 16.0)),
                      ),
                    ]),
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('500.00', style: TextStyle(fontSize: 16.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('500.00', style: TextStyle(fontSize: 16.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('500.00', style: TextStyle(fontSize: 16.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('500.00', style: TextStyle(fontSize: 16.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('500.00', style: TextStyle(fontSize: 16.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('500.00', style: TextStyle(fontSize: 16.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('500.00', style: TextStyle(fontSize: 16.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('500.00', style: TextStyle(fontSize: 16.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('500.00', style: TextStyle(fontSize: 16.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('500.00', style: TextStyle(fontSize: 16.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('500.00', style: TextStyle(fontSize: 16.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('500.00', style: TextStyle(fontSize: 16.0)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('500.00', style: TextStyle(fontSize: 16.0)),
                      ),
                    ]),
                  ]),
                  TableRow(children: [
                    Column(children: []),
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('Total',
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('Advance (-)',
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold)),
                      ),
                    ]),
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('25,000.00',
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('5,000.00',
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold)),
                      ),
                    ]),
                  ]),
                  TableRow(children: [
                    Column(children: []),
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('Total',
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold)),
                      ),
                    ]),
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('20,000.00',
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold)),
                      ),
                    ]),
                  ]),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: 100,
                    child:
                        ElevatedButton(onPressed: () {}, child: Text('Share'))),
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                    width: 100,
                    child: ElevatedButton(
                        onPressed: () {}, child: Text('Download')))
              ],
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
