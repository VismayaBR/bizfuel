import 'package:bizfuel/Businesses/Myads1.dart';
import 'package:flutter/material.dart';

class Bizpost3 extends StatefulWidget {
  const Bizpost3({super.key});

  @override
  State<Bizpost3> createState() => _Bizpost3State();
}

class _Bizpost3State extends State<Bizpost3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/background.jpg'), fit: BoxFit.cover),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.arrow_back),
                SizedBox(
                  width: 80,
                ),
                Text(
                  'Business Post',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.black,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 45,
                  backgroundColor: Colors.amberAccent,
                ),
                Text("  Name:Gadgets")
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "   Verified Phone Number:",
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(
            height: 15,
          ),
          const Center(
            child: SizedBox(
              width: 330,
              child: TextField(
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 5),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 400,
          ),
          Center(
            child: SizedBox(
              width: 200,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0))),
                  onPressed: () {
                    //Successfully posted msg
                  },
                  child: Text(
                    'Post',
                  )),
            ),
          )
        ]),
      )),
    );
  }
}
