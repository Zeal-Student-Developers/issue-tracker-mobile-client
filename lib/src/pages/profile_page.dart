import 'package:flutter/material.dart';
import 'package:final_app/themes.dart';

// class ProfilePage extends StatefulWidget {
//   @override
//   _ProfileState createState() => _ProfileState();
// }
//
// class _ProfileState extends State<ProfilePage> {
//   int counter = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text(kAppName),
//         backgroundColor: kMyBackgroundColor,
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             counter = counter + 1;
//           });
//         },
//         child: Container(
//           width: 60,
//           height: 60,
//           child: Icon(Icons.add),
//           decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               gradient: LinearGradient(
//                 colors: <Color>[Color(0xffee0000), Color(0xffeeee00)],
//               )),
//         ),
//       ),
//       body: Stack(
//         children: [
//           Column(
//             children: [
//               Expanded(
//                 flex: 5,
//                 child: Container(
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                       colors: <Color>[Color(0xffee0000), Color(0xffeeee00)],
//                     ),
//                   ),
//                   child: Column(children: [
//                     SizedBox(
//                       height: 110.0,
//                     ),
//                     CircleAvatar(
//                       radius: 65.0,
//                       backgroundImage: AssetImage('images/user_icon.png'),
//                       backgroundColor: Colors.white,
//                     ),
//                     SizedBox(
//                       height: 10.0,
//                     ),
//                     Text('Erza Scarlet',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 20.0,
//                         )),
//                     SizedBox(
//                       height: 10.0,
//                     ),
//                     Text(
//                       'S Class Mage',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 15.0,
//                       ),
//                     )
//                   ]),
//                 ),
//               ),
//               Expanded(
//                 flex: 5,
//                 child: Container(
//                   color: kMyBackgroundColor,
//                   child: Center(
//                       child: Card(
//                           margin: EdgeInsets.fromLTRB(0.0, 45.0, 0.0, 0.0),
//                           child: Container(
//                               width: 310.0,
//                               height: 290.0,
//                               child: Padding(
//                                 padding: EdgeInsets.all(10.0),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       "Information",
//                                       style: TextStyle(
//                                         fontSize: 17.0,
//                                         fontWeight: FontWeight.w800,
//                                       ),
//                                     ),
//                                     Divider(
//                                       color: Colors.grey[300],
//                                     ),
//                                     Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.start,
//                                       children: [
//                                         Icon(
//                                           Icons.home,
//                                           color: Colors.blueAccent[400],
//                                           size: 35,
//                                         ),
//                                         SizedBox(
//                                           width: 20.0,
//                                         ),
//                                         Column(
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           children: [
//                                             Text(
//                                               "Guild",
//                                               style: TextStyle(
//                                                 fontSize: 15.0,
//                                               ),
//                                             ),
//                                             Text(
//                                               "FairyTail, Magnolia",
//                                               style: TextStyle(
//                                                 fontSize: 12.0,
//                                                 color: Colors.grey[400],
//                                               ),
//                                             )
//                                           ],
//                                         )
//                                       ],
//                                     ),
//                                     SizedBox(
//                                       height: 20.0,
//                                     ),
//                                     Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.start,
//                                       children: [
//                                         Icon(
//                                           Icons.auto_awesome,
//                                           color: Colors.yellowAccent[400],
//                                           size: 35,
//                                         ),
//                                         SizedBox(
//                                           width: 20.0,
//                                         ),
//                                         Column(
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           children: [
//                                             Text(
//                                               "Magic",
//                                               style: TextStyle(
//                                                 fontSize: 15.0,
//                                               ),
//                                             ),
//                                             Text(
//                                               "Spatial & Sword Magic, Telekinesis",
//                                               style: TextStyle(
//                                                 fontSize: 12.0,
//                                                 color: Colors.grey[400],
//                                               ),
//                                             )
//                                           ],
//                                         )
//                                       ],
//                                     ),
//                                     SizedBox(
//                                       height: 20.0,
//                                     ),
//                                     Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.start,
//                                       children: [
//                                         Icon(
//                                           Icons.favorite,
//                                           color: Colors.pinkAccent[400],
//                                           size: 35,
//                                         ),
//                                         SizedBox(
//                                           width: 20.0,
//                                         ),
//                                         Column(
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           children: [
//                                             Text(
//                                               "Loves",
//                                               style: TextStyle(
//                                                 fontSize: 15.0,
//                                               ),
//                                             ),
//                                             Text(
//                                               "Eating cakes",
//                                               style: TextStyle(
//                                                 fontSize: 12.0,
//                                                 color: Colors.grey[400],
//                                               ),
//                                             )
//                                           ],
//                                         )
//                                       ],
//                                     ),
//                                     SizedBox(
//                                       height: 20.0,
//                                     ),
//                                     Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.start,
//                                       children: [
//                                         Icon(
//                                           Icons.people,
//                                           color: Colors.lightGreen[400],
//                                           size: 35,
//                                         ),
//                                         SizedBox(
//                                           width: 20.0,
//                                         ),
//                                         Column(
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           children: [
//                                             Text(
//                                               "Team",
//                                               style: TextStyle(
//                                                 fontSize: 15.0,
//                                               ),
//                                             ),
//                                             Text(
//                                               "Team Natsu",
//                                               style: TextStyle(
//                                                 fontSize: 12.0,
//                                                 color: Colors.grey[400],
//                                               ),
//                                             )
//                                           ],
//                                         )
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               )))),
//                 ),
//               ),
//             ],
//           ),
//           Positioned(
//               top: MediaQuery.of(context).size.height * 0.45,
//               left: 20.0,
//               right: 20.0,
//               child: Card(
//                   child: Padding(
//                 padding: EdgeInsets.all(16.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Container(
//                         child: Column(
//                       children: [
//                         Text(
//                           'Posts',
//                           style: TextStyle(
//                               color: Colors.grey[400], fontSize: 14.0),
//                         ),
//                         SizedBox(
//                           height: 5.0,
//                         ),
//                         Text(
//                           "$counter",
//                           style: TextStyle(
//                             fontSize: 15.0,
//                           ),
//                         )
//                       ],
//                     )),
//                     Container(
//                       child: Column(children: [
//                         Text(
//                           'Birthday',
//                           style: TextStyle(
//                               color: Colors.grey[400], fontSize: 14.0),
//                         ),
//                         SizedBox(
//                           height: 5.0,
//                         ),
//                         Text(
//                           'April 7th',
//                           style: TextStyle(
//                             fontSize: 15.0,
//                           ),
//                         )
//                       ]),
//                     ),
//                     Container(
//                         child: Column(
//                       children: [
//                         Text(
//                           'Age',
//                           style: TextStyle(
//                               color: Colors.grey[400], fontSize: 14.0),
//                         ),
//                         SizedBox(
//                           height: 5.0,
//                         ),
//                         Text(
//                           '19 yrs',
//                           style: TextStyle(
//                             fontSize: 15.0,
//                           ),
//                         )
//                       ],
//                     )),
//                   ],
//                 ),
//               )))
//         ],
//       ),
//     );
//   }
// }

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: kMyBackgroundColor,
        appBar: AppBar(
          backgroundColor: kMyBackgroundColor,
          centerTitle: true,
          title: Text(kAppName),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("images/random_image.jpg"),
                  fit: BoxFit.cover,
                )),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  child: Container(
                    alignment: Alignment(-0.90, 2.3),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("images/user_icon.png"),
                      radius: 50.0,
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Container(
                  //alignment: Alignment(0.5, 0.0),
                  alignment: Alignment.center,
                  child: Text(
                    "Siddharaj Jawalkar",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 21,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
                child: Card(
                  color: kMyCardColour,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              "Post",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "0",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              "Department",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Computer",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                indent: 10,
                endIndent: 10,
                color: kMyCardColour,
                height: 10,
                thickness: 5,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
                child: Card(
                  color: kMyCardColour,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "My Posts",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
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
