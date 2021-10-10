import 'package:attendance_daily_monitoring/screens/verification_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NumberScreen extends StatefulWidget {
  const NumberScreen({Key? key}) : super(key: key);

  @override
  _NumberScreenState createState() => _NumberScreenState();
}

class _NumberScreenState extends State<NumberScreen> {
  final _numberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown.shade100,
        body: SafeArea(
            child: Stack(children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.yellow.shade600.withOpacity(0.6),
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(200))),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 250,
              width: MediaQuery.of(context).size.width / 1.7,
              decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(300))),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/ATTENDANCE.png'),
                            fit: BoxFit.scaleDown)),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Text(
                    'Enter your \nmobile Number',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Enter Mobile Number',
                        prefixText: '+',
                        border: OutlineInputBorder()),
                    keyboardType: TextInputType.number,
                    controller: _numberController,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      if (_numberController.text.isNotEmpty) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VerificationScreen(
                                      number: '+${_numberController.text}',
                                    )));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
                            content: Text(
                          'Please enter phone number first.',
                          style: TextStyle(fontSize: 18),
                        )));
                      }
                    },
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.brown,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            'Send OTP',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ])));
  }
}
