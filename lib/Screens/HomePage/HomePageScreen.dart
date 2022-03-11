import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:job/Components/AppColors.dart';
import 'package:job/Components/MyAppTextStyle.dart';
import 'package:job/Screens/HomePage/PopularJobWidget.dart';
import 'package:job/Screens/HomePage/RecommendedJobWIdget.dart';
import 'package:job/Screens/LoginScreen/LoginScreen.dart';

import '../../Components/AppTextFormField.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 36),
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("assets/cat.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Popular koju",
                        style: MyAppTextStyle().textStyle(
                            appfontWeight: FontWeight.bold, appfontSize: 16),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text("Flutter Developer",
                          style: MyAppTextStyle().textStyle(
                              appfontWeight: FontWeight.bold,
                              appfontSize: 16,
                              textColor: AppColors.mGrey)),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                ],
              ),
            ),
            Text("Find your creative job here",
                style: MyAppTextStyle().textStyle(
                  appfontWeight: FontWeight.bold,
                  appfontSize: 18,
                )),
            const SizedBox(
              height: 16,
            ),
            AppTextField().textFormField(
                onTapFunction: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (_)=>LogInScreen()));
                },
                hint: "Search",
                icon: Icons.search),
            const SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Popular Jobs",
                    style: MyAppTextStyle().textStyle(
                      appfontWeight: FontWeight.bold,
                      appfontSize: 18,
                    )),
                TextButton(
                  onPressed: () {
                    //TODO: navigate to signup page
                  },
                  child: Text("See all",
                      style: MyAppTextStyle()
                          .textStyle(textColor: AppColors.dGrey)),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            const PopularJob(),
            const SizedBox(
              height: 18,
            ),
            Text("Recommended for you",
                style: MyAppTextStyle().textStyle(
                  appfontWeight: FontWeight.bold,
                  appfontSize: 18,
                )),
            const SizedBox(
              height: 12,
            ),
            const RecommendedJob(),
          ],
        ),
      ),
    );
  }
}
