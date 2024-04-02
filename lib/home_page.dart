import 'dart:io';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'incoming_call_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AwesomeNotifications().actionStream.listen((event) {
      if (event.buttonKeyPressed == "REJECT") {
        if (Platform.isAndroid) {
          SystemNavigator.pop();
        } else if (Platform.isIOS) {
          exit(0);
        }
        print("Call Rejected");
      } else if (event.buttonKeyPressed == 'ACCEPT') {
        print("Call Accepted");
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => IncomingCallPage()),
        );
      } else {
        print("Clicked on notifications");
      }
    });
    return Scaffold(
      body: Center(
        child: Text("Hi Test"),
      ),
    );
  }
}
