import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/branch_model.dart';

class BranchItem extends StatefulWidget {
  const BranchItem({super.key});

  @override
  State<BranchItem> createState() => _BranchItemState();
}

List<BranchModel> menus = [
  BranchModel(name: "Movies", asset: "assets/icons/nike.svg"),
  BranchModel(name: "Events", asset: "assets/icons/jordan.svg"),
  BranchModel(name: "Plays", asset: "assets/icons/converse.svg"),
  BranchModel(name: "Sports", asset: "assets/icons/puma.svg"),
  BranchModel(name: "Activity", asset: "assets/icons/reebok.svg"),
  BranchModel(name: "Monum", asset: "assets/icons/vans.svg"),
  BranchModel(name: "Monum", asset: "assets/icons/adidas.svg"),
];

class _BranchItemState extends State<BranchItem> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.15,
      width: size.width,
      // padding: EdgeInsets.only(left: 10,top: 10),
      // margin: EdgeInsets.only(left: 10,right: 10),
      child: ListView.builder(
         scrollDirection: Axis.horizontal,
          itemCount: menus.length,
          itemBuilder: ((context, index) {
            return Padding(
           padding: const EdgeInsets.only(top: 10, left: 20.0, right: 10),

              child: GestureDetector(
                onTap: (){},
                child: Container(
                  
                  width: 80.0, // Đường kính của button
                  height:80.0, // Đường kính của button
                  decoration: BoxDecoration(
                    shape: BoxShape.circle, // Hình dạng hình tròn
                    color: Colors.grey.shade200, // Màu nền của button
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3), // Đổ bóng cho button
                      ),
                    ],
                  ),
                  child: Center(
                    child: SvgPicture.asset(menus[index].asset,
                        width: 40.0, height: 40.0), // Logo ở giữa button
                  ),
                ),
              ),
            );
          })),
    );
  }
}
