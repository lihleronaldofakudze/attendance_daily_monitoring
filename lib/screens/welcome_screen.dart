import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int _userType = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade100,
      body: SafeArea(
          child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 100,
              width: 80,
              decoration: BoxDecoration(
                  color: Colors.yellow.shade600.withOpacity(0.5),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(200),
                  )),
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome to',
                  style: GoogleFonts.langar(
                      fontSize: 40, fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  height: 23,
                ),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/ATTENDANCE.png'),
                          fit: BoxFit.scaleDown)),
                ),
                SizedBox(
                  height: 29,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  child: PhysicalModel(
                    color: Colors.black,
                    elevation: 12.0,
                    borderRadius: BorderRadius.circular(10),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Text(
                            'You are a ...',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color:
                                  _userType == 1 ? Colors.yellow : Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: RadioListTile(
                              value: 1,
                              groupValue: _userType,
                              onChanged: (value) {
                                setState(() {
                                  _userType = int.parse(value.toString());
                                });
                                Future.delayed(
                                    Duration(milliseconds: 800),
                                    () => Navigator.pushNamed(
                                        context, '/number'));
                              },
                              title: Text(
                                'Business Man',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              activeColor: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color:
                                  _userType == 2 ? Colors.yellow : Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: RadioListTile(
                              value: 2,
                              groupValue: _userType,
                              onChanged: (value) {
                                setState(() {
                                  _userType = int.parse(value.toString());
                                });
                                Future.delayed(
                                    Duration(milliseconds: 800),
                                    () => Navigator.pushNamed(
                                        context, '/number'));
                              },
                              title: Text(
                                'Employee',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              activeColor: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
