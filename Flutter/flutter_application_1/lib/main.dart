import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Cuadro(),
    );
  }
}

class Cuadro extends StatelessWidget {
  const Cuadro({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
          top: -25,
          left: -200,
          child: Transform.rotate(
            angle: 330,
            child: Container(
              width: 2000,
              height: 300,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromRGBO(255, 74, 74, 1),
                    Color.fromRGBO(255, 129, 110, 1),
                  ]),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 201, 92, 92),
                      spreadRadius: 10,
                      blurRadius: 20,
                      offset: Offset(0, 3),
                    )
                  ]),
            ),
          )),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child:
                // ignore: sized_box_for_whitespace
                Container(
                    width: 180,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2,
                                  ),
                                ),
                                child: Image.asset(
                                  'assets/perfil.png',
                                  width: 100,
                                  height: 100,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 5.0),
                          child: Center(
                              child: Text('Kyle Walker',
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 15,
                                      color: Colors.white))),
                        )
                      ],
                    )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child:
                // ignore: sized_box_for_whitespace
                Column(
              children: [
                Row(
                  children: [
                    // ignore: sized_box_for_whitespace
                    Container(
                      width: 100,
                      child: const Column(
                        children: [
                          Text(
                            "SCHEDULE",
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 18,
                                color: Colors.white),
                          ),
                          Text(
                            "8",
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 40,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    // ignore: sized_box_for_whitespace
                    Container(
                      width: 100,
                      child: const Column(
                        children: [
                          Text(
                            "EVENTS",
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 18,
                                color: Colors.white),
                          ),
                          Text(
                            "15",
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 40,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    // ignore: sized_box_for_whitespace
                    Container(
                      width: 100,
                      child: const Column(
                        children: [
                          Text(
                            "ROUTINE",
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 18,
                                color: Colors.white),
                          ),
                          Text(
                            "4",
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 40,
                                color: Colors.white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    children: [
                      // ignore: sized_box_for_whitespace
                      Container(
                        width: 120,
                        child: const Column(
                          children: [
                            Text(
                              "SAVINGS",
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                            Text(
                              "20K",
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 30,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      // ignore: sized_box_for_whitespace
                      Container(
                        width: 120,
                        child: const Column(
                          children: [
                            Text(
                              "JULY GOAL",
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                            Text(
                              "50K",
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 30,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
      Positioned(
        top: 220,
        left: 40,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child:
                  // ignore: sized_box_for_whitespace
                  Container(
                width: 200,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name:",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 15,
                          color: Colors.black54),
                    ),
                    Text(
                      "Kyle Walker",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 22,
                          color: Color.fromARGB(178, 0, 0, 0)),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child:
                  // ignore: sized_box_for_whitespace
                  Container(
                width: 200,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email:",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 15,
                          color: Colors.black54),
                    ),
                    Text(
                      "kyle@gmail.com",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 22,
                          color: Color.fromARGB(178, 0, 0, 0)),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child:
                  // ignore: sized_box_for_whitespace
                  Container(
                width: 200,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Location:",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 15,
                          color: Colors.black54),
                    ),
                    Text(
                      "New York, USA",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 22,
                          color: Color.fromARGB(178, 0, 0, 0)),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child:
                  // ignore: sized_box_for_whitespace
                  Container(
                width: 200,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Languajes:",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 15,
                          color: Colors.black54),
                    ),
                    Text(
                      "English, French",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 22,
                          color: Color.fromARGB(178, 0, 0, 0)),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child:
                  // ignore: sized_box_for_whitespace
                  Container(
                width: 200,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ocupation:",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 15,
                          color: Colors.black54),
                    ),
                    Text(
                      "Employee",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 22,
                          color: Color.fromARGB(178, 0, 0, 0)),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child:
                  // ignore: sized_box_for_whitespace
                  Container(
                width: 420,
                child: const Divider(
                  color: Colors.black,
                  height: 10,
                  thickness: 1,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "My family:",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 17,
                          color: Colors.black54),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20.0),
                          child: Row(
                            children: [
                              Text(
                                "Kitty Short",
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 22,
                                    color: Color.fromARGB(178, 0, 0, 0)),
                              ),
                              Text(
                                " - Wife",
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 17,
                                    color: Colors.black54),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20.0, left: 50.0),
                          child: Row(
                            children: [
                              Text(
                                "Jordon Short",
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 22,
                                    color: Color.fromARGB(178, 0, 0, 0)),
                              ),
                              Text(
                                " - Spouse",
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 17,
                                    color: Colors.black54),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 20.0),
                        child: Row(
                          children: [
                            Text(
                              "Alex Short",
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 22,
                                  color: Color.fromARGB(178, 0, 0, 0)),
                            ),
                            Text(
                              " - Grandpa",
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 17,
                                  color: Colors.black54),
                            ),
                          ],
                        )),
                  ]),
            )
          ],
        ),
      )
    ]);
  }
}
