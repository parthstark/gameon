import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gameon/constants.dart';
import 'booking_page.dart';
import 'my_button.dart';

class MyOTPPage extends StatelessWidget {
  const MyOTPPage({super.key});
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
                      "Enter OTP",
                      style: TextStyle(color: constant.textDark),
                      textScaleFactor: 1.25,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        OtpCell(activated: true),
                        OtpCell(activated: true),
                        OtpCell(activated: false),
                        OtpCell(activated: false),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "OTP Sent to 9898989898",
                      style: TextStyle(color: constant.textLight),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.timer, color: constant.myGreen),
                        Text(
                          " 00:59",
                          style: TextStyle(color: constant.myGreen),
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),
                    InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MyBookingPage(),
                            ),
                          );
                        },
                        child: const myButton(buttonText: 'Login')),
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

class OtpCell extends StatelessWidget {
  const OtpCell({Key? key, required this.activated}) : super(key: key);

  final bool activated;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
              width: activated ? 1 : 0.5,
              color: constant.myGreen.withOpacity(activated ? 1 : 0.4)),
          color: constant.myGreen.withOpacity(0.08),
        ),
        height: 50,
        width: 50,
        child: TextField(
          style: TextStyle(color: constant.myGreen, fontSize: 26),
          obscureText: activated,
          obscuringCharacter: '*',
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          decoration: const InputDecoration(border: InputBorder.none),
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly
          ],
        ),
      ),
    );
  }
}
