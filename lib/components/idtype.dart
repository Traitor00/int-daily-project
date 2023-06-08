import 'package:flutter/material.dart';
import 'package:intern1/components/idtypeselected.dart';

class IdType extends StatefulWidget {
  const IdType({super.key});

  @override
  State<IdType> createState() => _IdTypeState();
}

class _IdTypeState extends State<IdType> {
  String dropdown_value = "Malaysian";
  var countries = ["Malaysian", "indonesian", "chinese"];
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

            //passport
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => IdTypeSelected()));
              },
              child: Container(
                margin:
                    EdgeInsets.only(top: 25, left: 15, right: 15, bottom: 15),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade300)),
                height: 110,
                child: Row(
                  children: [
                    Icon(Icons.card_giftcard_sharp, color: Colors.blue),
                    SizedBox(
                      width: 20,
                    ),
                    Text("Passport")
                  ],
                ),
              ),
            ),

            // mypR
            Container(
              margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade300)),
              height: 110,
              child: Row(
                children: [
                  Icon(
                    Icons.card_giftcard_sharp,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text("MyPR")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
