import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const Qamar());
}

class Qamar extends StatelessWidget {
  const Qamar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Center(child: Text("I'm Qamar")),
      ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                  cursorColor: Colors.green,
                  style: const TextStyle(fontSize: 18, color: Colors.green),
              decoration: InputDecoration(
                icon: const Icon(Icons.email), //start me icon add krne k liye
                prefixIcon: const Icon(Icons.alternate_email), //field me icon add krne k liye
                suffixIcon: const Icon(Icons.star), //field k end pr icon add krne k liye
                fillColor: Colors.grey,
                enabledBorder: OutlineInputBorder(
                   borderSide: const BorderSide(color: Colors.red, width: 2),
                borderRadius: BorderRadius.circular(15)),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.teal, width: 2),
                    borderRadius: BorderRadius.circular(15)),
                errorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red)
                ),
                focusedErrorBorder: const OutlineInputBorder(
                    borderSide:  BorderSide(color: Colors.red)
                ),
                filled: false,
                hintText: 'Email',
                labelText: 'Email',
                hintStyle: const TextStyle(fontSize: 14, color: Colors.grey),
              ),
                onChanged: (xyz){
                  print(xyz);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                keyboardType: TextInputType.phone,
                style: TextStyle(fontSize: 18, color: Colors.green),
                decoration: InputDecoration(

                  hintText: 'Phone',
                  labelText: 'Phone',
                  hintStyle: TextStyle(fontSize: 14, color: Colors.red),
                ),
              ),
            ),


          ],
        )
    )
    );
  }
}

