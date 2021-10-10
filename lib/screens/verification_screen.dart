import 'package:attendance_daily_monitoring/widgets/loading_widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationScreen extends StatefulWidget {
  final number;
  const VerificationScreen({Key? key, this.number}) : super(key: key);

  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  String _verificationId = "";
  bool _loading = false;
  final _pinCodeController = TextEditingController();

  signInWithPhoneNumber() async {
    FirebaseAuth _auth = FirebaseAuth.instance;
    await _auth.verifyPhoneNumber(
      phoneNumber: widget.number,
      timeout: Duration(seconds: 60),
      verificationCompleted: (PhoneAuthCredential credential) async {},
      verificationFailed: (FirebaseAuthException e) {
        showDialog(
            context: context,
            builder: (_) => AlertDialog(
                  title: Text('Phone Number Error'),
                  content: Text(e.message.toString()),
                  actions: [
                    TextButton(
                        onPressed: () => Navigator.pushNamed(context, '/login'),
                        child: Text('Try again.'))
                  ],
                ));
      },
      codeSent: (String verificationId, int? resendToken) async {
        setState(() {
          _verificationId = verificationId;
        });
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  @override
  void initState() {
    super.initState();
    signInWithPhoneNumber();
  }

  @override
  Widget build(BuildContext context) {
    return _loading
        ? LoadingWidget()
        : Scaffold(
            backgroundColor: Colors.brown.shade100,
            body: SafeArea(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          widget.number,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.brown),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.edit,
                              color: Colors.brown,
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Enter OTP',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'you will get OTP via SMS to \n${widget.number}',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    PinCodeTextField(
                      keyboardType: TextInputType.number,
                      pinTheme: PinTheme(
                          activeFillColor: Colors.white,
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(8.0)),
                      appContext: context,
                      length: 6,
                      onChanged: (pin) {
                        _pinCodeController.text = pin;
                      },
                      onCompleted: (code) async {
                        AuthCredential authCredential =
                            PhoneAuthProvider.credential(
                                verificationId: _verificationId, smsCode: code);
                        UserCredential userCredential = await FirebaseAuth
                            .instance
                            .signInWithCredential(authCredential);

                        User? user = userCredential.user;

                        if (user != null) {
                          Navigator.pushNamed(context, '/auth');
                        } else {
                          setState(() {
                            _loading = false;
                          });
                          showDialog(
                              context: context,
                              builder: (_) => AlertDialog(
                                    title: Text('Error'),
                                    content: Text('Something went wrong.'),
                                    actions: [
                                      TextButton(
                                          onPressed: () =>
                                              Navigator.pushNamed(context, '/'),
                                          child: Text('Try again.'))
                                    ],
                                  ));
                        }
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      '5s',
                      style: TextStyle(fontSize: 18, color: Colors.brown),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Text(
                          'Not received OTP,',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Resend OTP',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
  }
}
