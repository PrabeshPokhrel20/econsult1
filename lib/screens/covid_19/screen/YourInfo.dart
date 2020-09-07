import 'package:econsult_new_project/screens/covid_19/config/color.dart';
import 'package:econsult_new_project/screens/covid_19/widget/custom_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class YourInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      appBar: CustomAppBar(),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHeader(screenHeight),
        ],
      ),
    );
  }
  SliverToBoxAdapter _buildHeader(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Palette.primaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40.0),
              bottomRight: Radius.circular(40.0),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: screenHeight * 0.01,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Your health info on covid-19",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                Text(
                  'based on the information given by you',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}