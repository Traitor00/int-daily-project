import 'package:flutter/material.dart';

class IdTypeSelected extends StatefulWidget {
  const IdTypeSelected({super.key});

  @override
  State<IdTypeSelected> createState() => _IdTypeSelectedState();
}

class _IdTypeSelectedState extends State<IdTypeSelected> {
  String dropdown_value = "Malaysian";
  String default_value = "Country of Issue";
  var countries = ["Malaysian", "indonesian", "chinese"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                      color: Colors.grey,
                      style: BorderStyle.solid,
                      width: 0.50),
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

              //passport Container
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300)),
                margin: EdgeInsets.fromLTRB(15, 20, 15, 10),
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Column(children: [
                          Icon(
                            Icons.contact_mail_outlined,
                            color: Colors.blue,
                          )
                        ]),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        //margin: EdgeInsets.only(bottom: 20),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Passport",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),

                            //gapp
                            SizedBox(
                              height: 10,
                            ),

                            //Identification no textfield
                            SizedBox(
                              height: 40,
                              // set desired height here
                              child: TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Identfication Number',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 10,
                            ),

                            //Country of Issue
                            Container(
                              //margin: EdgeInsets.all(10.0),
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                border: Border.all(
                                    color: Colors.grey,
                                    style: BorderStyle.solid,
                                    width: 0.50),
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

                            SizedBox(
                              height: 10,
                            ),

                            SizedBox(
                              height: 40,
                              // set desired height here
                              child: TextFormField(
                                decoration: InputDecoration(
                                  suffixIcon:
                                      Icon(Icons.calendar_month_rounded),
                                  labelText: ' Passport Issue Date',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 10,
                            ),

                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: 40,
                              // set desired height here
                              child: TextFormField(
                                decoration: InputDecoration(
                                  suffixIcon:
                                      Icon(Icons.calendar_month_rounded),
                                  labelText: ' Passport Expiry Date',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ), //Passport

              Container(
                margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
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
                    Text("MyPR")
                  ],
                ),
              ),

              InkWell(
                onTap: () => print('hello'),
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
      ),
    );
  }
}
