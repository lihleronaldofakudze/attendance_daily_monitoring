import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SpinKitThreeInOut(
              color: Colors.brown,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Please wait...',
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
