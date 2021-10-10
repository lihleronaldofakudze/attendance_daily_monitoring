import 'package:attendance_daily_monitoring/models/CurrentUser.dart';
import 'package:attendance_daily_monitoring/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentUser = Provider.of<CurrentUser?>(context);
    return Scaffold(
      backgroundColor: Colors.brown.shade100,
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.black,
        elevation: 0.0,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/edit_profile');
              },
              icon: Icon(Icons.edit_rounded)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.black,
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.white,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'K Anilbabu',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'SR Graphic Designer',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Cell : ${currentUser!.phoneNumber}',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListTile(
                leading: FaIcon(
                  FontAwesomeIcons.thumbsUp,
                  color: Colors.black,
                ),
                title: Text(
                  'Like',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListTile(
                leading: Icon(
                  Icons.share_rounded,
                  color: Colors.black,
                ),
                title: Text(
                  'Share',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListTile(
                leading: Icon(
                  Icons.add_circle_outline_rounded,
                  color: Colors.black,
                ),
                title: Text(
                  'More',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListTile(
                leading: FaIcon(
                  FontAwesomeIcons.whatsapp,
                  color: Colors.black,
                ),
                title: Text(
                  'Contact Us',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListTile(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                            title: Text('Logout'),
                            content: Text('Are you sure you want to logout'),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text('No')),
                              TextButton(
                                  onPressed: () async {
                                    Navigator.pop(context);
                                    await AuthService().logout()!.then((value) {
                                      Navigator.pushNamed(context, '/auth');
                                    });
                                  },
                                  child: Text('Yes')),
                            ],
                          ));
                },
                leading: Icon(
                  Icons.logout_rounded,
                  color: Colors.red,
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(fontSize: 16, color: Colors.red),
                ),
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
