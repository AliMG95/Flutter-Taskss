import 'package:flutter/material.dart';
import 'package:flutter_day2_task1/widgets/custom_btn.dart';

class OnboardingScreen1 extends StatelessWidget {
  const OnboardingScreen1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 700, // the body width
          padding: EdgeInsets.all(20), // internal padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // img
              SizedBox(
                width: 450,
                child: Image.asset(
                  "assets/images/group176.png",
                  width: 350,
                  fit: BoxFit.fitWidth,
                ),
              ),

              SizedBox(height: 20), // space after image
              // texts
              Column(
                children: [
                  Text(
                    "Enterprise Team \n Management",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                  ),
                  SizedBox(height: 25), // spacing between texts
                  Text(
                    "With an extensive menu prepared by talented chefs, fresh quality food.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey, fontSize: 25),
                  ),
                ],
              ),

              SizedBox(height: 50), // space before btns

              Column(
                children: [
                  CustomBtn(
                    txt: "Sign Up",
                    width: 600,
                    height: 80,
                    onPressed: () {
                      print("object");
                    },
                    // color: const Color.fromRGBO(236, 69, 95, 1),
                  ),

                  SizedBox(height: 20), // spacing between btns
                  CustomBtn(
                    txt: "Already have an account",
                    width: 600,
                    height: 80,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
