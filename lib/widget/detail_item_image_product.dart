import 'package:flutter/material.dart';
import 'package:login/models/product_image_model.dart';

class DetailItemImageProduct extends StatelessWidget {
  const DetailItemImageProduct({super.key, required this.productImage});
  final ProductImage productImage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          shape: BoxShape.rectangle,
          border: Border.all(
            width: 2,
            color: Colors.blue
          ),
          borderRadius: BorderRadius.circular(10),
          // các thuộc tính khác
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Image.asset(
              productImage.url,
              width: 65,
              height: 65,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
