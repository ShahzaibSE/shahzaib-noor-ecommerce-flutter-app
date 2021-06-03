import 'package:flutter/material.dart';


class UserProfile extends StatefulWidget {

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Profile'), 
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child:Image(image: AssetImage('assets/myDP.jpg'),
                          width: 150, height: 150),
                  )
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top:20),
                      child: Text('Shahzaib Noor', 
                                  style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                    ),
                    Container(
                      padding: EdgeInsets.only(top:7),
                      child: Text('shahzaibnoor40@gmail.com',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  ))
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      child: ElevatedButton(
                        child: Text('Log Out'),
                        onPressed: (){},
                      ),
                    )
                  ],
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(18),
                  child: Text('ACCOUNT INFORMATION', 
                              style: TextStyle(fontWeight: FontWeight.bold,
                                                fontSize: 18, wordSpacing: 2))
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Row(
                    children: [
                        Text('Full Name',
                                  style: TextStyle(fontWeight: FontWeight.bold,
                                                  fontSize: 16)
                        ),
                        Container(child:Icon(Icons.edit), padding: EdgeInsets.only(left: 250))
                      ]
                    )
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 15, top: 5),
                  child: Text('Shahzaib Noor',
                              style: TextStyle(fontWeight: FontWeight.bold,
                                              fontSize: 14, color: Colors.grey)
                  )
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 15),
                  child: Text('Email',
                              style: TextStyle(fontWeight: FontWeight.bold,
                                              fontSize: 16)
                  )
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 15, top: 5),
                  child: Text('shahzaibnoor40@gmail.com',
                              style: TextStyle(fontWeight: FontWeight.bold,
                                              fontSize: 14, color: Colors.grey)
                  )
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 15),
                  child: Text('Phone Number',
                              style: TextStyle(fontWeight: FontWeight.bold,
                                              fontSize: 16)
                  )
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 15, top: 5),
                  child: Text('+923032057794',
                              style: TextStyle(fontWeight: FontWeight.bold,
                                              fontSize: 14, color: Colors.grey)
                  )
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 15),
                  child: Text('Address',
                              style: TextStyle(fontWeight: FontWeight.bold,
                                              fontSize: 16)
                  )
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 15, top: 5),
                  child: Text('New York, 49th Street',
                              style: TextStyle(fontWeight: FontWeight.bold,
                                              fontSize: 14, color: Colors.grey)
                  )
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 15),
                  child: Text('Gender',
                              style: TextStyle(fontWeight: FontWeight.bold,
                                              fontSize: 16)
                  )
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 15, top: 5),
                  child: Text('Male',
                              style: TextStyle(fontWeight: FontWeight.bold,
                                              fontSize: 14, color: Colors.grey)
                  )
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 15),
                  child: Text('Date of Birth',
                              style: TextStyle(fontWeight: FontWeight.bold,
                                              fontSize: 16)
                  )
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 15, top: 5),
                  child: Text('August 24, 1993',
                              style: TextStyle(fontWeight: FontWeight.bold,
                                              fontSize: 14, color: Colors.grey)
                  )
                ),
              ],
            )
          ],
        )
      )
    );
  }
}