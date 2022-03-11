import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job/Components/AppColors.dart';
import 'package:job/Components/AppTextFormField.dart';
import 'package:job/Screens/HomePage/HomePageScreen.dart';

import '../../Components/AppButton.dart';
import '../../Components/MyAppTextStyle.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              "assets/jobs.png",
              width: width,
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned(
            height: height - (height * 0.4),
            width: width,
            bottom: 0,
            child: Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  topLeft: Radius.circular(16),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 32,
                      top: 32,
                    ),
                    child: Text(
                      "Login",
                      style: MyAppTextStyle().textStyle(
                          appfontSize: 18, appfontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: AppTextField().textFormField(
                          hint: "Username", icon: Icons.person_outline)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: AppTextField().textFormField(
                        hint: "Password", icon: Icons.visibility),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Center(
                        child: AppButton(
                          OnButtonPressFunction: (){
                       Navigator.push(context, MaterialPageRoute(builder: (_)=> const HomePage() ));
                          },
                            buttonText: 'Login',
                            style: MyAppTextStyle().textStyle(
                                textColor: Colors.white, appfontSize: 18),
                            borderRadius: 32,
                            buttonBgColor: Color(0xff72D7CB))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: MyAppTextStyle()
                              .textStyle(appfontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        TextButton(
                          onPressed: () {
                            //TODO: navigate to signup page
                          },
                          child: Text("Register Instead.",
                              style: MyAppTextStyle().textStyle(
                                  appfontWeight: FontWeight.bold,
                                  textColor: AppColors.redish)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
