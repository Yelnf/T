import 'package:flutter/material.dart';
import 'package:flutter02/lib/widget/page_content.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('注册'),
          centerTitle: true,
        ),
        body: SafeArea(
          minimum: EdgeInsets.all(20),
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
              TextField(
                obscureText: showPassword,
                decoration: InputDecoration(
                    labelText: 'Repeat the Password',
                    hintText: 'Please enter the password again',
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
              ElevatedButton(onPressed: () {}, child: Text('Setup')),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('已有账号，'),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context, 'login');
                      },
                      child: Text('去登陆'))
                ],
              )
            ],
          ),
        ));

    ;
  }
}
