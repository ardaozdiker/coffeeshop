// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatelessWidget {
  final TextEditingController emailCon = new TextEditingController();
  final TextEditingController passwordCon = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/try1.jpg"),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.only(
                      left: width / 25, top: height / 4, right: width / 25),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Tipica",
                        style: const TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  )),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: height / 28, horizontal: width / 25),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Hoş Geldiniz! Devam Etmek İçin Lütfen Giriş Yapınız.",
                        style: const TextStyle(
                            fontSize: 18, color: Colors.white))),
              ),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(225, 95, 27, .3),
                                  blurRadius: 20,
                                  offset: Offset(0, 10))
                            ]),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.grey[200]!))),
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    hintText: "Email Address",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none),
                                controller: emailCon,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.grey[200]!))),
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    hintText: "Password",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none),
                                controller: passwordCon,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: height / 50),
                          child: SizedBox(
                            width: width / 2,
                            height: height / 20,
                            child: ElevatedButton(
                                child: Text("LOGIN ",
                                    style: const TextStyle(fontSize: 18)),
                                onPressed: () {
                                  if(emailCon.text.isEmpty || passwordCon.text.isEmpty){
                                    print("eksik bilgi mevcut");
                                  }
                                  // Validate will return true if the form is valid, or false if
                                  // the form is invalid.
                                  //we have void signInWithEmailAndPassword ==> so let's use it :
                                  /*                          signInWithEmailAndPassword(
                              email.text, password.text, (e) {});
                          //after this was successfully logged in navigate it to hello page ==>
                          Future.delayed(const Duration(milliseconds: 1500),
                              () {
                            // Here you can write your code
                            User? user = FirebaseAuth.instance.currentUser;
                            if (usersigned == true && user!.emailVerified) {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => getData()),
                                  (route) => false);
                            } 
                          });*/
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.green)),
                          )),                 Row(
                          children: [
                            SizedBox(
                              width: 80,
                            ),
                            Builder(builder: (context) {
                              return Center(
                                child: TextButton(
                                  child: Text("Don't Have An Account?"),
                                  style: TextButton.styleFrom(
                                      primary: Colors.green),
                                  onPressed: () {
                                /*    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                RegisterScreen())); */
                                  },
                                ),
                              );
                            }),
                          ],
                        ),
                    ],
                  ),
                ),
              ))
            ],
          ),
        ));
  }
}
