
import 'package:flutter/material.dart';

import '../../Components/AppColors.dart';
import '../../Components/MyAppTextStyle.dart';

class RecommendedJob extends StatelessWidget {
  const RecommendedJob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   ListView.builder(
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (_,index)=>
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Container(
              height: 160,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColors.fillColor,
                  borderRadius: BorderRadius.circular(16)
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius:
                              BorderRadius.circular(16),
                              image: DecorationImage(
                                  image:
                                  AssetImage("assets/cat.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              Text(
                                "SagaTech Infosys",
                                style: MyAppTextStyle().textStyle(
                                    appfontWeight: FontWeight.bold,
                                    appfontSize: 14),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text("Bhaktapur",
                                  style: MyAppTextStyle().textStyle(
                                      appfontWeight:
                                      FontWeight.bold,
                                      appfontSize: 14,
                                      textColor: AppColors.mGrey)),
                            ],
                          ),
                        ),
                        Expanded(child: Container()),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.bookmark)),
                      ],
                    ),
                    SizedBox(height: 18,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 12, right: 12, top: 6, bottom: 6),
                            child: Text("Full time"),
                          ),
                        ),


                        Text("2 days left",
                            style: MyAppTextStyle().textStyle(
                                appfontWeight: FontWeight.bold,
                                appfontSize: 14,
                                textColor: AppColors.dGrey)),
                      ],
                    )
                  ],
                ),
              ),),
          ),);
  }
}
