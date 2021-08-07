import 'package:catalog_app/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/login.png",
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'User name', labelText: 'Enter username'),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Password', labelText: 'Enter password'),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, '/home');
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      alignment: Alignment.center,
                      width: changeButton ? 50 : 150,
                      height: 50,
                      child: changeButton
                          ? Icon(
                              Icons.done,
                              color: Colors.black,
                            )
                          : Text(
                              "LOGIN",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10),
                            ),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(changeButton ? 20 : 8),
                          color: Colors.blueGrey),
                    ),
                  )
                  //
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
