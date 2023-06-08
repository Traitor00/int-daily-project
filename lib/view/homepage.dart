// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:intern1/components/idtype.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool istapped = false; // for new IC
  bool tappedpolice = false; //for police
  String dropdown_value = "Malaysian";
  var countries = ["Malaysian", "indonesian", "chinese"];
  void policepressed() {
    setState(() {
      tappedpolice == true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.people_rounded),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text("Select Your ID Types",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(
                    color: Colors.grey, style: BorderStyle.solid, width: 0.50),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                    isExpanded: true,
                    //borderRadius: BorderRadius.circular(20),
                    value: dropdown_value,
                    items: countries.map((String countries) {
                      return DropdownMenuItem(
                        value: countries,
                        child: Text(countries),
                      );
                    }).toList(),
                    onChanged: (String? newvalue) {
                      setState(() {
                        dropdown_value = newvalue!;
                      });
                    }),
              ),
            ),

            //new IC
            GestureDetector(
              onTap: () {
                setState(() {
                  istapped = true;
                });
              },
              child: Container(
                margin:
                    EdgeInsets.only(left: 15, right: 15, bottom: 15, top: 20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade300)),
                height: 100,
                child: Row(
                  children: [
                    Icon(Icons.card_giftcard_sharp, color: Colors.blue),
                    SizedBox(
                      width: 20,
                    ),
                    istapped == false
                        ? Expanded(
                            flex: 1, child: Container(child: Text("New IC")))
                        : Expanded(
                            flex: 5,
                            child: Container(
                                child: Column(
                              children: [
                                Text("New IC"),
                                SizedBox(
                                  height: 2,
                                ),
                                SizedBox(
                                  height: 40, // set desired height here
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelText: 'Enter Id Number',
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                          )
                  ],
                ),
              ),
            ),

            //Police
            GestureDetector(
              //onTap: policepressed,
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => IdType()));
                /*setState(() {
                  tappedpolice == true;
                });*/
              },
              child: Container(
                margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade300)),
                height: 100,
                child: Row(
                  children: [
                    Icon(Icons.card_giftcard_sharp, color: Colors.blue),
                    SizedBox(
                      width: 20,
                    ),
                    Text("Police"),
                  ],
                ),
              ),
            ),

            //Military
            Container(
              margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade300)),
              height: 100,
              child: Row(
                children: [
                  Icon(Icons.card_giftcard_sharp, color: Colors.blue),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Military")
                ],
              ),
            ),

            //button
            tappedpolice == false
                ? Container(
                    color: Colors.amber,
                  )
                : InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => IdType()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                      //width: 100.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        border: Border.all(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Center(
                        child: Text(
                          'Continue',
                          style: TextStyle(fontSize: 18.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
