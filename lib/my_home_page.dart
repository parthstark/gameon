import 'package:flutter/material.dart';
import 'package:gameon/constants.dart';
import 'package:gameon/otp_page.dart';
import 'my_button.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                      width: MediaQuery.of(context).size.width,
                      'images/ground.png'),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.3 + 25,
                    color: constant.myGreen.withOpacity(0.88),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'images/logo.png',
                            width: 65,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 25),
                child: Column(
                  children: [
                    Text(
                      "Hi!",
                      style: TextStyle(color: constant.textDark),
                      textScaleFactor: 2,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Let's Get Started",
                      style: TextStyle(color: constant.textLight),
                      textScaleFactor: 1.15,
                    ),
                    const SizedBox(height: 50),
                    Row(
                      children: [
                        Text(
                          "Enter Phone Number",
                          style: TextStyle(color: constant.textDark),
                          textScaleFactor: 1.15,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            width: 1, color: constant.myGreen.withOpacity(0.4)),
                        color: constant.myGreen.withOpacity(0.08),
                      ),
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: SizedBox(
                          child: Row(
                            children: [
                              Text(
                                "+91",
                                style: TextStyle(color: constant.textDark),
                                textScaleFactor: 1.15,
                              ),
                              Text(
                                ' | ',
                                style: TextStyle(
                                    color: constant.myGreen.withOpacity(0.4)),
                                textScaleFactor: 2,
                              ),
                              const Expanded(
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: '9898989898',
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Expanded(child: SizedBox()),
                    InkWell(
                        onTap: () => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (cntext) => const MyOTPPage())),
                        child: const myButton(buttonText: 'Get OTP')),
                    const SizedBox(height: 10),
                    Text(
                      'Have a Pin?',
                      style: TextStyle(
                          color: constant.textLight,
                          decoration: TextDecoration.underline),
                    ),
                    const SizedBox(height: 50)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
