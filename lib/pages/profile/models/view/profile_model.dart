// import 'package:flutter/material.dart';

// class User {
//     String name;
//     Icon icon;

//     User({
//         required this.name,
//         required this.icon,
//     });

// }
import 'package:flutter/material.dart';

class User {
   String name;
   Icon icon;
  VoidCallback onTapAction; 

  User({
    required this.name,
    required this.icon,
    required this.onTapAction,
  });
}

