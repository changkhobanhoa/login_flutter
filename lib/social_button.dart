import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({super.key, required this.icons, required this.fun});
  final String icons;
  final Function() fun;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(13),
      onTap: () {
        fun();
      },
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle, // Hình dạng hình tròn
          color: Colors.white, // Màu nền của button
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3), // Đổ bóng cho button
            ),
          ],
        ),
        child: Center(
            child: SvgPicture.asset(
          icons,
          width: 20,
          height: 20,
        )),
      ),
    );
  }
}
