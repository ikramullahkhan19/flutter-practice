import 'package:flutter/material.dart';

class ProfileCard extends StatefulWidget {
  const ProfileCard({super.key});

  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Card',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.white12,
      body: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height*0.6,
          width: MediaQuery.of(context).size.width*0.9,
          child: Card(
            elevation: 8,
            color: Colors.blueGrey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),

            margin: EdgeInsets.all(20),


            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,


                children: [
                  CircleAvatar(
                    backgroundImage:AssetImage('images/ikram.jpg'),
                    radius: 50,

                  ),
                  SizedBox(height: 20,),
                  Text(
                    'Ikram khan',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                  SizedBox(height: 10,),
                  Text(textAlign: TextAlign.center,'"Computer Science Graduate | Building apps with Flutter & Dart"',style: TextStyle(fontSize: 15,color: Colors.white),),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Center(
                        child: Icon(Icons.facebook,color: Colors.blue,),
                      ), Center(child: Icon(Icons.email)),
                      Center(child: Icon(Icons.phone,color: Colors.green,)),
                    ],
                  )

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
