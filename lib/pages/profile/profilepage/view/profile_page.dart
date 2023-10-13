

import 'package:flutter/material.dart';
import 'package:sellphase/pages/profile/models/view/profile_model.dart';

import 'package:sellphase/pages/profile/tile/profile_tile.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  List<User> profileList = [
    User(
      name: 'My Account',
      icon: Icon(
        Icons.person_outlined,
        color: Color.fromRGBO(7, 57, 109, 100),
      ),
      onTapAction: () {},
    ),
    User(
      name: 'Settings',
      icon: Icon(
        Icons.settings_outlined,
        color: Color.fromRGBO(7, 57, 109, 100),
      ),
      onTapAction: () {},
    ),
    User(
      name: 'Help Center',
      icon: Icon(
        Icons.question_mark_outlined,
        color: Color.fromRGBO(7, 57, 109, 100),
      ),
      onTapAction: () {},
    ),
    User(
      name: 'Log Out',
      icon: Icon(
        Icons.logout,
        color: Color.fromRGBO(7, 57, 109, 100),
      ),
      onTapAction: () {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Profile'),
      //   centerTitle: true,
      // ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50),
          Text(
            'Profile',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(7, 57, 109, 100),
            ),
          ),
          SizedBox(height: 20),
          Stack(
            children: [
              CircleAvatar(
                radius: 55,
                backgroundColor: Color.fromRGBO(7, 57, 109, 100),
              ),
              Positioned(
                  right: 5,
                  bottom: 1,
                  child: CircleAvatar(
                      backgroundColor: Colors.grey.shade100,
                      radius: 20,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.camera_alt,
                            color: Colors.grey.shade900,
                          ))))
            ],
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: profileList.length,
              itemBuilder: (context, index) {
                return ProfileTile(userdata: profileList[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
