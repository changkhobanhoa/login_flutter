import 'package:flutter/material.dart';

import '../models/slider_model.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({super.key, this.index = 0});
  final index;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){
        
      },
      child: SizedBox(
        height: size.height * 0.3,
        width: size.width,
        child: Image.asset(
          sliderData[index].url,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
             return Image.asset('assets/images/placeholder.jpg');
          } ,
        ),
      ),
    );
  }
}

List<AdSliderModel> sliderData = [
  AdSliderModel(
      url: "assets/images/slider_banner.png", redirectUrl: ""),
  AdSliderModel(
      url: "assets/images/slider_banner.png", redirectUrl: ""),
  AdSliderModel(
      url: "assets/images/slider_banner.png", redirectUrl: ""),
];
