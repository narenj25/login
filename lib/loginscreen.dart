import 'package:flutter/material.dart';
import 'package:fm/colors.dart';
import 'package:fm/constants.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Stack(
            children: [
              Image.asset(
                bgimage,
                height: height * 0.40,
                width: width,
                fit: BoxFit.cover,
              ),
              Container(
                height: height * 0.40,
                width: width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    stops: [0.3, 0.8],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Colors.white],
                  ),
                ),
                // color: Colors.teal.withOpacity(0.3),
              ),
              Positioned(
                bottom: 8,
                left: 0,
                right: 0,
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        appName,
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Text(
              slogan,
              style: TextStyle(color: Colors.black45),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 20),
            child: Container(
              child: Text(
                "   $li  ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [primarycolor.withOpacity(0.3), Colors.transparent],
                  ),
                  border:
                      Border(left: BorderSide(color: primarycolor, width: 5))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: primarycolor)),
                prefixIcon: Icon(
                  Icons.email,
                  color: primarycolor,
                ),
                labelText: E,
                labelStyle: TextStyle(color: primarycolor, fontSize: 16),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: primarycolor)),
                  prefixIcon: Icon(
                    Icons.lock_open,
                    color: primarycolor,
                  ),
                  labelText: p,
                  labelStyle: TextStyle(color: primarycolor, fontSize: 16)),
            ),
          ),
          Align(
              alignment: Alignment.centerRight,
              child: TextButton(onPressed: () {}, child: Text(f))),
          Container(
              child: Center(
                  child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 15.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                backgroundColor: Color.fromRGBO(65, 184, 6, 1)),
            onPressed: () {},
            child: Text(
              l,
            ),
          ))),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(d),
              TextButton(
                onPressed: () {},
                child: Text(
                  c,
                  style: TextStyle(color: primarycolor, fontSize: 14),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
