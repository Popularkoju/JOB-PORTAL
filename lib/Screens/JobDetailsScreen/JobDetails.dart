import 'package:flutter/material.dart';
import 'package:job/Components/AppColors.dart';
import 'package:provider/provider.dart';

import '../../Components/MyAppTextStyle.dart';
import '../../StateManagement/HomePageManagement.dart';

class JobDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 100,
              color: AppColors.fillColor,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back_ios)),
                      Expanded(child: Container()),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.bookmark,
                          )),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                            image: AssetImage("assets/cat.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "SagaTech Infosys",
                          style: MyAppTextStyle().textStyle(
                              appfontWeight: FontWeight.bold, appfontSize: 14),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text("Bhaktapur",
                            style: MyAppTextStyle().textStyle(
                                appfontWeight: FontWeight.bold,
                                appfontSize: 14,
                                textColor: AppColors.mGrey)),
                      ],
                    ),
                  ),
                  Expanded(child: Container()),
                  // IconButton(
                  //     onPressed: () {
                  //       // context.read<HomePageManagement>().index =  index;
                  //       // context.read<HomePageManagement>().isIndex = context.read<HomePageManagement>().savedIndex.contains(context.read<HomePageManagement>().index);
                  //
                  //     },
                  //     icon: Icon(
                  //       Icons.bookmark,
                  //       color:
                  //       context.watch<HomePageManagement>().isIndex ?
                  //       Colors.orange: AppColors.dGrey
                  //       ,
                  //     )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Text("Flutter Developer",
                      style: MyAppTextStyle().textStyle(
                          appfontWeight: FontWeight.bold,
                          appfontSize: 14,
                          textColor: AppColors.dGrey)),
                  Expanded(child: Container()),
                  Text("02 feb 2020",
                      style: MyAppTextStyle().textStyle(
                          appfontWeight: FontWeight.bold,
                          appfontSize: 14,
                          textColor: AppColors.dGrey)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.dviolet,
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Icon(
                            Icons.watch_outlined,
                            size: 24,
                            color: AppColors.lBlack,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text("Full time",
                          style: MyAppTextStyle().textStyle(
                            appfontWeight: FontWeight.bold,
                            appfontSize: 14,
                          ))
                    ],
                  ),
                  Expanded(child: Container()),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.dGreen,
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Icon(
                            Icons.monetization_on_outlined,
                            size: 24,
                            color: AppColors.lBlack,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text("Negotiable",
                          style: MyAppTextStyle().textStyle(
                            appfontWeight: FontWeight.bold,
                            appfontSize: 14,
                          ))
                    ],
                  ),
                  Expanded(child: Container()),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.dPink,
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Icon(
                            Icons.event_seat_outlined,
                            size: 24,
                            color: AppColors.lBlack,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text("Senior",
                          style: MyAppTextStyle().textStyle(
                            appfontWeight: FontWeight.bold,
                            appfontSize: 14,
                          )),
                    ],
                  ),
                  SizedBox(
                    width: 12,
                  )
                ],
              ),
            ),


         Padding(
           padding: const EdgeInsets.all(12.0),
           child: TabBar(
                  unselectedLabelColor: AppColors.dGrey,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: AppColors.buttonBGColor),
                    tabs: [
                      Tab(text: "Description",),
                      Tab(text: "Company"),
                      Tab(text: "Review")
                    ]),
         ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: TabBarView(
                    children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 12, left: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Requirements",
                              style: MyAppTextStyle().textStyle(
                                appfontWeight: FontWeight.bold,
                                appfontSize: 14,
                              ))

                        ],
                      ),
                    ),

                  ),
                  Container(
                    height: 300,
                    color: Colors.green,
                  ),
                  Container(
                    height: 300,
                    color: Colors.blue,
                  )
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
