import 'package:flutter/material.dart';
import 'package:job/StateManagement/HomePageManagement.dart';
import 'package:provider/provider.dart';

import '../../Components/AppColors.dart';
import '../../Components/MyAppTextStyle.dart';
import '../JobDetailsScreen/JobDetails.dart';

class PopularJob extends StatelessWidget {
  const PopularJob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 160,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (_, index) {
             context.read<HomePageManagement>().index =  index;
             context.read<HomePageManagement>().isIndex = context.read<HomePageManagement>().savedIndex.contains(context.read<HomePageManagement>().index);
              return Padding(
                padding: const EdgeInsets.only(right: 12),
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_){
                      return JobDetails();
                    }));
                  },
                  child: Container(
                    width: 240,
                    decoration: BoxDecoration(
                        color: index % 2 == 0
                            ? AppColors.lightGreen
                            : AppColors.lightBlue,
                        borderRadius: BorderRadius.circular(16)),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
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
                                          appfontWeight: FontWeight.bold,
                                          appfontSize: 14),
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
                              IconButton(
                                  onPressed: () {
                                    // context.read<HomePageManagement>().index =  index;
                                    // context.read<HomePageManagement>().isIndex = context.read<HomePageManagement>().savedIndex.contains(context.read<HomePageManagement>().index);
                                    context
                                        .read<HomePageManagement>()
                                        .markFavourite(index);
                                  },
                                  icon: Icon(
                                    Icons.bookmark,
                                    color:
                                    context.watch<HomePageManagement>().isIndex ?
                                     Colors.orange: AppColors.dGrey
                                         ,
                                  )),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text("Full Stack Developer",
                              style: MyAppTextStyle().textStyle(
                                  appfontWeight: FontWeight.bold,
                                  appfontSize: 14,
                                  textColor: AppColors.dGrey)),
                          const SizedBox(
                            height: 8,
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColors.fillColor,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.only(
                                      left: 12, right: 12, top: 6, bottom: 6),
                                  child: Text("full time"),
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
                    ),
                  ),
                ),
              );
            }));
  }
}
