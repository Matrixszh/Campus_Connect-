/*class Constants {
  static const logoPath = 'assets/images/logo.png';
  static const VectorPath = 'assets/images/Vector.png';
  static const illusPath = 'assets/images/illus.png';

static const avatarDefault =
      'assets/images/profilepic.jpeg';

static const bannerDefault =
      'assets/images/defaultbn.jpeg';
   
}*/
import 'package:flutter/material.dart';

import '../../Features/feed/feed_screen.dart';
import '../../Features/post/screens/add_post_screen.dart';

class Constants {
  static const logoPath = 'assets/images/CC.png';
  static const loginEmotePath ='assets/images/login.png';
  static const googlePath = 'assets/images/Vector.png'; 
  static const bannerDefault = 'assets/images/profilepic.jpg';
  static const avatarDefault = 'assets/images/defaultbn.jpg';
      

  static const tabWidgets = [
    FeedScreen(),
    AddPostScreen(),
  ];

  static const IconData up = IconData(0xe800, fontFamily: 'MyFlutterApp', fontPackage: null);
  static const IconData down = IconData(0xe801, fontFamily: 'MyFlutterApp', fontPackage: null);

  static const awardsPath = 'assets/images/awards';

  static const awards = {
    'awesomeAns': '${Constants.awardsPath}/awesomeanswer.png',
    'gold': '${Constants.awardsPath}/gold.png',
    'platinum': '${Constants.awardsPath}/platinum.png',
    'helpful': '${Constants.awardsPath}/helpful.png',
    'plusone': '${Constants.awardsPath}/plusone.png',
    'rocket': '${Constants.awardsPath}/rocket.png',
    'thankyou': '${Constants.awardsPath}/thankyou.png',
    'til': '${Constants.awardsPath}/til.png',
  };
}
