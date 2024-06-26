import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:footballapp/presentation/secondScreen/second_screen.dart';
import 'package:footballapp/presentation/thirdscreen/third_screen.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const InitialScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage("assets/images/mainBg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              icon: Image.asset('assets/images/iconFootballPlayNow.png'),
              iconSize: MediaQuery.of(context).size.height / 30,
              onPressed: () {},
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: Image.asset(
                    'assets/images/imgBtnStart.png',
                    height: 70,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Image.asset(
                    'assets/images/iconBtnRate.png',
                    height: 70,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Image.asset(
                    'assets/images/iconBtnPlayGame.png',
                    height: 70,
                  ),
                  onPressed: () {
                    Navigator.push<void>(
                      context,
                      ThirdScreen.route(),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
