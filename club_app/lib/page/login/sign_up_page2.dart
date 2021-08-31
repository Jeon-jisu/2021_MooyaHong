import 'package:club_app/page/login/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpPage2 extends StatefulWidget {
  const SignUpPage2({Key? key}) : super(key: key);

  @override
  _SignUpPage2State createState() => _SignUpPage2State();
}

class _SignUpPage2State extends State<SignUpPage2> {
   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _idController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        color: Colors.yellow,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(16),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            SizedBox(height: 50),
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                icon: Icon(Icons.account_circle),
                labelText: '이름 입력',
                border: OutlineInputBorder(),
                hintText: 'name',
              ),
            /*validator: (String value){
              if(value.isEmpty){
                return 'id 입력하세요'
              }
              return null;
            },*/
            ),
            SizedBox(height: 30),
            
            TextFormField(
              controller: _idController,
              decoration: InputDecoration(
                icon: Icon(Icons.account_circle),
                labelText: '아이디 입력',
                border: OutlineInputBorder(),
                hintText: 'id',
              ),
            /*validator: (String value){
              if(value.isEmpty){
                return 'id 입력하세요'
              }
              return null;
            },*/
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
                obscureText: true, 
                controller: _passwordController,
                decoration: InputDecoration(
                    icon: Icon(Icons.vpn_key),
                    labelText: "회원가입할 비밀번호를 입력해주세요",
                    border: OutlineInputBorder(),
                    hintText: 'password'),
               /* validator: (String value) {
                  if (value.isEmpty) {
                    return "비밀번호를 입력해주세요";
                  }
                  return null;
                },*/
              ),
           SizedBox(
                height: 16.0,
              ),
           TextFormField(
                obscureText: true, 
                decoration: InputDecoration(
                    icon: Icon(Icons.vpn_key),
                    labelText: "비밀번호를 한번 더 입력해주세요",
                    border: OutlineInputBorder(),
                    hintText: 'password'),
                /*validator: (String value) {
                  if (value != _passwordController) {
                    return "비밀번호가 일치하지 않습니다.";
                  }
                  return null;
                },*/
              ),
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                         primary: Colors.orange, onPrimary: Colors.black),
                  onPressed: () {
                    _register();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage())
                    );
                  },
                  child: Text('회원가입'),
                ),
              )
          ],
        ),))
    );
}

  void _register() async {              //firebase 연동
    /*final AuthResult result = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
            email: _idController.text, password: _passwordController.text);
    final FirebaseUser user = result.user;

    if (user == null) {
      final snackBar = SnackBar(
      content: Text("Please try again later"),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
  }*/
}
}