import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

final _formKey = GlobalKey<FormState>();

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int _stepNumber = 1;

  final ctl_username = TextEditingController();
  final ctl_password = TextEditingController();

  void saveData(BuildContext context) {
    _formKey.currentState?.save();
  }

  void nextPage(BuildContext context) {
    setState(() {
      if (_stepNumber == 1) {
        _stepNumber = 2;
      } else {
        _stepNumber = 1;
      }
    });
  }

  Widget formOneBuilder(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(13.93, 57, 13, 12),
      child: Column(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 12),
              child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: ctl_username,
                  style: TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                      hintText: "Email",
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontWeight: FontWeight.w400),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(255, 255, 255, 0.5),
                          width: 1.0,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(255, 255, 255, 0.5),
                          width: 2.0,
                        ),
                      )))),
          Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () => {},
                child: const Text(
                  "Forgot email?",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Color.fromRGBO(255, 199, 0, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
              )),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              TextButton(
                onPressed: () => {},
                child: const Text(
                  "Signup here",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Color.fromRGBO(255, 199, 0, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
              ),
              SizedBox(
                width: 146.0,
                height: 48.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(255, 199, 0, 1)),
                  onPressed: () {
                    nextPage(context);
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(
                        color: Color.fromRGBO(23, 23, 23, 1),
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                ),
              )
            ],
          ),
          connectWithWidget()
        ],
      ),
    );
  }

  Widget formTwoBuilder(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(13.93, 57, 13, 12),
      child: Column(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 12),
              child: TextFormField(
                  obscureText: true,
                  controller: ctl_username,
                  style: TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontWeight: FontWeight.w400),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(255, 255, 255, 0.5),
                          width: 1.0,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(255, 255, 255, 0.5),
                          width: 2.0,
                        ),
                      )))),
          Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () => {},
                child: const Text(
                  "Forgot password?",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Color.fromRGBO(255, 199, 0, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
              )),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              TextButton(
                onPressed: () => {},
                child: const Text(
                  "Signup here",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Color.fromRGBO(255, 199, 0, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
              ),
              SizedBox(
                width: 146.0,
                height: 48.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(255, 199, 0, 1)),
                  onPressed: () {
                    //nextPage(context);
                    Navigator.of(context).pushNamed('/main');
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Color.fromRGBO(23, 23, 23, 1),
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                ),
              )
            ],
          ),
          connectWithWidget()
        ],
      ),
    );
  }

  Widget connectWithWidget() {
    return Padding(
        padding: EdgeInsets.fromLTRB(0, 164, 0, 12),
        child: Column(children: [
          Text(
            "Or connect with",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 36,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              socialMediaButton("assets/misc/FB.png"),
              socialMediaButton("assets/misc/Google.png"),
              socialMediaButton("assets/misc/TW.png")
            ],
          )
        ]));
  }

  Widget socialMediaButton(String assetPath) {
    return ElevatedButton(
        onPressed: () => {},
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          fixedSize: const Size(51, 51),
          primary: Colors.white,
        ),
        child: Image.asset(assetPath, fit: BoxFit.cover));
  }

  @override
  Widget build(BuildContext context) {
    switch (_stepNumber) {
      case 1:
        return Form(
          key: _formKey,
          child: formOneBuilder(context),
        );

      case 2:
        return Form(
          key: _formKey,
          child: formTwoBuilder(context),
        );
      default:
        return Container();
    }
  }

  void dispose() {
    ctl_username.dispose();
    ctl_password.dispose();

    super.dispose();
  }
}
