import 'package:carousel_slider/carousel_slider.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login/widget/branch_item.dart';
import 'package:login/widget/product_grid_view.dart';

import '../../widget/custom_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

bool trending = true;
bool popular = false;
bool recommended = false;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    var width = size.width / 100;
    var height = size.height / 100;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Transform.rotate(
            angle: 33,
            child: const Icon(FeatherIcons.barChart2, color: Colors.black)),
        actions: [
          SvgPicture.asset(
            "assets/icons/slider.svg",
            width: width * 1.5,
            height: height * 1.5,
            // color: Colors.red,
          ),
          SizedBox(width: width * 4),
          SvgPicture.asset(
            "assets/icons/bag.svg",
            width: width * 2,
            height: height * 2,
            // color: Colors.red,
          ),
          SizedBox(width: width * 4),
        ],
      ),
      body: Padding(
        padding:   EdgeInsets.only(top: width*5 ,left: width*5 ,right: height*2, ),
        child: SingleChildScrollView( 
          child: Column(
            children: [
              CarouselSlider.builder(
                itemCount: sliderData.length,
                itemBuilder: (context, index, realId) {
                  return CustomSlider(
                    index: index,
                  );
                },
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Branch",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "See all",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              BranchItem(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "New Arial",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "See all",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              ProductGridView(),
            ],
          ),
        ),
      ),
    );
  }

  /// Widget for the [body] of the home page
}
