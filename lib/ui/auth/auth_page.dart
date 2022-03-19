import 'package:flutter/material.dart';
import '../shared/colors.dart';
import '../shared/curve_painter.dart';
import 'auth_tab_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: _getWidgetForm(context),
      painter: CurvePainter(),
    );
  }

  Widget _getWidgetForm(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 45,
        ),
        Center(
          child: Stack(
            children: [
              Container(
                alignment: Alignment.center,
                child: Image.asset('assets/misc/logo.png',
                    width: 100, height: 100, fit: BoxFit.cover),
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(30),
                child: const Text("WUE",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none)),
              )
            ],
          ),
        ),
        Center(child: _getLoginForm(context))
      ],
    );
  }

  Widget _getLoginForm(BuildContext context) {
    return Card(
      color: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        //set border radius more than 50% of height and width to make circle
      ),
      elevation: 8,
      shadowColor: colorOne,
      margin: EdgeInsets.all(20),
      child: Container(
        height: 591,
        width: 331,
        child: Align(
          alignment: Alignment.topCenter,
          child: AuthTabbedPage(),
        ),
      ),
    );
  }

  Widget _individualTab(BuildContext context, String title) {
    return Flexible(
      child: Container(
          height: MediaQuery.of(context).padding.bottom,
          margin: EdgeInsets.fromLTRB(0, 35, 0, 0),
          padding: const EdgeInsets.all(0),
          width: double.infinity,
          decoration: const BoxDecoration(
            border: Border(
              right: BorderSide(
                  color: Color.fromRGBO(255, 255, 255, 0.27),
                  width: 1,
                  style: BorderStyle.solid),
            ),
          ),
          child: Center(
            child: Tab(
              child: Text(
                title,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          )),
    );
  }
}
