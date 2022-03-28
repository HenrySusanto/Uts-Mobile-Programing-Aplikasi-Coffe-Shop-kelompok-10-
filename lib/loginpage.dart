import 'package:flutter/material.dart';
import 'package:uts/mainpage.dart';
import 'package:uts/registerpage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height: 640,
              width: 360,
              color: Color(0xff8C95FF),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child:Text("LOGIN",style: TextStyle(
                        fontSize: 40
                    ),),
                  ),

                  Container(

                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(20),
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: Color(0xffFFFFFF),
                              filled: true,
                              prefixIcon: const Icon(Icons.supervised_user_circle_rounded),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                              hintText: "User name",
                            ),
                            controller: controller,
                          ),
                        ),

                      Container(
                        margin: EdgeInsets.only(left: 20,right: 20),
                        child:   TextField(
                          decoration: InputDecoration(
                            fillColor: Color(0xffFFFFFF),
                            filled: true,
                            prefixIcon: const Icon(Icons.password_rounded),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                            hintText: "Password",
                          ),
                          controller: controller,
                        ),
                      ),
                      ],
                    ),
                  ),

                  Container(

                    child: Column(
                      children: [
                        RaisedButton(color: Color(0xffC8F4F9), child: Text("Login"), onPressed:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return MainPage();
                          }));
                        }),

                        RaisedButton( color: Color(0xffC8F4F9),child: Text("Register"), onPressed:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return RegisterPage();
                          }));
                        },
                        ),
                      ],
                    ),
                  )

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
