import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  debugShowCheckedModeBanner: false,
    home: StudentCard(),
));

class StudentCard extends StatefulWidget {
  const StudentCard({Key? key}) : super(key: key);

  @override
  State<StudentCard> createState() => _StudentCardState();
}

class _StudentCardState extends State<StudentCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                Image.asset('assets/picture.jpeg'),
                SizedBox(height: 10.0),
                Text(
                  'Login to your account',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.facebook, color: Colors.blue, size: 40.0,),
                    SizedBox(width: 10.0,),
                    Icon(Icons.apple_outlined, color: Colors.black, size: 40.0,),
                  ],),
                SizedBox(height:5.0),
                Text(
                  'or use your email account',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),),
                  SizedBox(height:40.0),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Email' ,style: TextStyle(color: Colors.grey),)
                      ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey, width: 2.0)
                      ),
                    width: 320.0,
                    height: 50.0,
                    ),
                  SizedBox(height:20.0),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Password' ,style: TextStyle(color: Colors.grey),),
                        Icon(Icons.remove_red_eye_rounded, color: Colors.grey, size: 20.0,),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey, width: 2.0)
                      ),
                    width: 320.0,
                    height: 50.0,
                    ),
                  SizedBox(height: 20.0,),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Container(
                        height: 20.0, width: 20.0,
                        decoration: BoxDecoration(color: Colors.grey[400], borderRadius: BorderRadius.circular(5.0)),
                        ),
                        Text('Remember me?', style: TextStyle(color: Colors.black),),
                        SizedBox(width: 20.0,),
                        Text('Forgotten your password?', textAlign: TextAlign.right, style: TextStyle(color: Colors.red),)
                    ],),
                  ),
                  SizedBox(height:60.0),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Login' ,style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16.0),),
                      ],),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                      ),
                    width: 320.0,
                    height: 50.0,
                    ),
                  SizedBox(height: 20.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have and account?', style: TextStyle(color: Colors.black),),
                      SizedBox(width: 10.0,),
                      Text('Register Here', 
                      textAlign: TextAlign.right, 
                      style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),)
                  ],),
                  SizedBox(height: 20.0,)
              ],
            ),
          ),
        ),
      )
    );
  }
}






