import 'package:flutter/material.dart';
import 'package:flutter02/lib/widget/page_content.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('登录'),
          centerTitle: true,
        ),
        body: SafeArea(
          minimum: EdgeInsets.all(10),
          child: ListView(
            children: [
              TextField(
                decoration: InputDecoration(
                    labelText: 'Username', hintText: 'Please enter username'),
              ),
              Padding(
                padding: EdgeInsets.all(10),
              ),
              TextField(
                obscureText: showPassword,
                decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Please enter password',
                    suffixIcon: IconButton(
                      icon: Icon(showPassword
                          ? Icons.visibility_off_outlined
                          : Icons.visibility),
                      onPressed: () {
                        setState(() {
                          showPassword = !showPassword;
                        });
                      },
                    )),
              ),
              Padding(
                padding: EdgeInsets.all(10),
              ),
              ElevatedButton(onPressed: () {}, child: Text('Login')),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('还没有账号，'),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'register');
                      },
                      child: Text('去注册'))
                ],
              )
            ],
          ),
        ));

    ;
  }
}
