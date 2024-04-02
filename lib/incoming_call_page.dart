import 'package:flutter/material.dart';

class IncomingCallPage extends StatefulWidget {
  const IncomingCallPage({super.key});

  @override
  State<IncomingCallPage> createState() => _IncomingCallPageState();
}

class _IncomingCallPageState extends State<IncomingCallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      SizedBox.expand(
          child: FittedBox(
        fit: BoxFit.cover,
        child: Image.asset(
          "assets/images/calling_background.png",
        ),
      )),
      Column(children: <Widget>[
        Expanded(
            flex: 3,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Text("Aung Khant Kyaw",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 36,
                        color: Color(0XFFFFFFFF),
                        fontWeight: FontWeight.w400)),
                Text("09420700336",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0XFFAAAAAA),
                        fontWeight: FontWeight.w500)),
              ],
            )),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [
                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.red,
                            child: Icon(
                              Icons.call_end,
                              size: 34,
                              color: Colors.white,
                            ))),
                    Text(
                      "Decline",
                      style: TextStyle(
                          color: Color(0XFFFFFFFF),
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    )
                  ]),
                  Column(children: [
                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.green,
                            child: Icon(
                              Icons.phone,
                              size: 34,
                              color: Colors.white,
                            ))),
                    Text(
                      "Accept",
                      style: TextStyle(
                          color: Color(0XFFFFFFFF),
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    )
                  ])
                ]),
          ),
        )
      ])
    ]));
  }
}
