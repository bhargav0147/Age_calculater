import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  TextEditingController txtby = TextEditingController();
  TextEditingController txtcy = TextEditingController();
  dynamic my="YYYY";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEAEAE8),
      appBar: AppBar(
        backgroundColor: Color(0xffEAEAE8),
        centerTitle: true,
        title: Center(
          child: Text(
            "Age Calculater",
            style:
                TextStyle(color: Colors.black, letterSpacing: 1, fontSize: 20),
          ),
        ),
        leading: Center(
          child: Icon(
            Icons.menu_open,
            color: Colors.black,
          ),
        ),
        actions: [
          Icon(
            Icons.account_circle,
            color: Colors.black,
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 300,
              width: 400,
              decoration: BoxDecoration(
                  color: Color(0xff6470DE),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(height: 2),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text(
                        "Your Birth Year",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25
                    ),
                    child: TextField(
                      controller: txtby,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none
                        ),
                      ),
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text(
                        "Current Year",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25
                    ),
                    child: TextField(
                      controller: txtcy,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none
                        ),
                      ),
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      String birth = txtby.text;
                      String current=txtcy.text;
                      int b=int.parse(birth);
                      int c=int.parse(current);
                      setState(() {
                        my=c-b;
                      });
                    },
                    child: Container(
                        height: 50,
                        width: 350,
                        child: Center(
                          child: Text(
                            "Calculat My Age",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff6470DE),
                              letterSpacing: 2,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        )
                    ),
                  ),
                  SizedBox(height: 2),
                ],
              ),
            ),
            Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                  color: Color(0xff6470DE),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  "$my",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2),
                ),
              ),
            ),
            Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                  color: Color(0xff6470DE),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  "MM",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2),
                ),
              ),
            ),
            Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                  color: Color(0xff6470DE),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  "DD",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
