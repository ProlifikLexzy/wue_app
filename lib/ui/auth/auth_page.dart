import 'package:flutter/material.dart';
import '../shared/center_wave_clip.dart';
import '../shared/colors.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      child: _getContainerWithGradient(),
      clipper: CenterWaveClipper(),
    );
  }

  Widget _getContainerWithGradient() {
    return Container(
      color: colorOne,
      child: Column(
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
          _getLoginForm()
        ],
      ),
    );
  }

  Widget _getLoginForm() {
    return Card();
  }
}
