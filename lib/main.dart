import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color mainColor = Color(0xffffa500); //FFA500
    Color mainColor1 = Color(0xffb9492b); //B9492B
    Color mainColor2 = Color(0xff79D75D); //79D75D
    return Scaffold(
      backgroundColor: Colors.white,
      /*appBar: AppBar(
        title: Container(
          alignment: Alignment.centerRight,
          child: Text(
            'Alan Jean',
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
        ),
        backgroundColor: Colors.white,
        actions: [
          RaisedButton(
            color: Colors.white,
            child: Text(
              'Edit Profile',
              style: TextStyle(
                color: mainColor,
              ),
            ),
            onPressed: () {},
          )
        ],
      ),
      */

      drawer: Drawer(
        child: Text('fd'),
      ),
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.fromLTRB(6.0, 12.0, 6.0, 0.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.menu_rounded,
                      color: mainColor,
                      size: 40,
                    ),
                    Icon(
                      Icons.account_circle,
                      color: Colors.red[900],
                      size: 40,
                    ),
                    Container(
                        child: Column(
                      children: [
                        Text(
                          'Alan Jean',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.0,
                              fontFamily: 'Ubuntu'),
                        ),
                        Text(
                          'Co-ordinator',
                          style: TextStyle(
                            fontSize: 11.0,
                          ),
                        )
                      ],
                    )),
                    RaisedButton(
                      color: Colors.white,
                      child: Text(
                        'Edit Profile',
                        style: TextStyle(
                          color: mainColor,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: mainColor, width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
                Divider(
                  height:
                      40.0, //the gap b/w the avatar and the line & the line and text
                  color: Colors.grey[500],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(18.0, 0.0, 0.0, 25.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/Capture.PNG'),
                        radius: 20.0,
                      ),
                      SizedBox(
                        width: 35.0,
                      ),
                      Column(
                        children: [
                          Text('Hogwarts School',
                              style: TextStyle(
                                  fontSize: 22.0,
                                  color: mainColor,
                                  fontFamily: 'Ubuntu',
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.5)),
                          SmoothStarRating(
                            color: mainColor,
                            borderColor: mainColor,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 220.0, 0.0),
                      child: Text(
                        '20 Leads',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0,
                            fontFamily: 'Ubuntu'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15.0, 15.0, 110.0, 0.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.account_circle,
                              color: Colors.pink[400],
                              size: 50,
                            ),
                            Icon(
                              Icons.account_circle,
                              color: Colors.blue[400],
                              size: 50,
                            ),
                            Icon(
                              Icons.account_circle,
                              color: Colors.orange[400],
                              size: 50,
                            ),
                            Icon(
                              Icons.account_circle,
                              color: Colors.deepOrange[500],
                              size: 50,
                            ),
                            Icon(
                              Icons.account_circle,
                              color: Colors.green[400],
                              size: 50,
                            ),
                            Icon(
                              Icons.account_circle,
                              color: Colors.red[400],
                              size: 50,
                            ),
                            Icon(
                              Icons.account_circle,
                              color: Colors.brown[400],
                              size: 50,
                            ),
                            Icon(
                              Icons.account_circle,
                              color: Colors.purple[400],
                              size: 50,
                            ),
                            Icon(
                              Icons.account_circle,
                              color: Colors.black,
                              size: 50,
                            ),
                            SizedBox(
                              width: 40.0,
                            ),
                            Icon(
                              Icons.add_circle,
                              color: mainColor,
                              size: 50,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '      🔥 ',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        Text(
                          '  Hot Leads  ',
                          style: TextStyle(
                              fontSize: 16.0,
                              backgroundColor: mainColor,
                              color: Colors.white,
                              fontFamily: 'Ubuntu'),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                /*
                Row(
                  children: [
                    Text('5 tasks'),
                  ],
                  
                )*/
              ],
            )),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.message),
              title: Text(
                'Messages',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                ),
              ),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle,
                size: 60.0,
                color: mainColor,
              ),
              title: Text(
                'Admissions',
                style: TextStyle(
                  color: mainColor,
                  fontFamily: 'Ubuntu',
                ),
              ),
              backgroundColor: mainColor),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              title: Text(
                'Referrals',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                ),
              ),
              backgroundColor: Colors.blue)
        ],
      ),
    );
  }
}
