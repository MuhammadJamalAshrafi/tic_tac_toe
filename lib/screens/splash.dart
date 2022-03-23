import 'package:flutter/material.dart';
import 'package:tic_tac_toe/base/styles.dart';
import 'package:tic_tac_toe/screens/home.dart';
import 'package:tic_tac_toe/widgets/app_text.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    navigateToHome();
  }

  navigateToHome() async {
    await Future.delayed(const Duration(seconds: 3)).then((value) =>
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => const Home())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appDarkBlue,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.topCenter,
                      color: appDarkBlue,
                      width: MediaQuery.of(context).size.width,
                      child: const Padding(
                          padding: EdgeInsets.only(top: 66),
                          child: AppText(
                              text: "KATI ZERO",
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 20)),
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      color: appLightBlue,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 55),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            AppText(
                                text: "POWERED BY",
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 12),
                            SizedBox(height: 10),
                            AppText(
                                text: "TECH IDARA",
                                color: appDarkBlue,
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 12)
                          ],
                        ),
                      ),
                    )),
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 65),
                child: Image.asset("assets/images/logo.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
