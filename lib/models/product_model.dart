import 'package:flutter/material.dart';

import 'branch_model.dart';
import 'product_image_model.dart';

class Products {
  final String? image, price, title, description;
  final int? id;
  final double? rate;
  final Color? color;
  final BranchModel? branchModel;
  final List<ProductImage>? detailImages;

  Products(
      {this.color,
      this.price,
      this.title,
      this.id,
      this.image,
      this.rate,
      this.description,
      this.detailImages,
      this.branchModel});
}

List productsList = [
  Products(
      id: 01,
      title: "Classic Mawes",
      image: "assets/images/1.png",
      price: "\$ 199.00",
      color: const Color(0xFF8B2C3F).withOpacity(0.2),
      rate: 4.5,
      branchModel: BranchModel(name: "adidas", asset: "asset/icons/adidas.svg"),
      detailImages: [
        ProductImage(
          id: 1,
          url: "assets/images/1.png",
          description: "Áo khoác Uniqlo chất lượng cao",
        ),
        ProductImage(
          id: 2,
          url: "assets/images/2.png",
          description: "Mặt trước áo khoác Uniqlo",
        ),
        ProductImage(
          id: 3,
          url: "assets/images/3.png",
          description: "Mặt sau áo khoác Uniqlo",
        ),
      ],
      description:
          "the is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."),
  Products(
      id: 02,
      branchModel: BranchModel(name: "adidas", asset: "asset/icons/adidas.svg"),
      title: "Classic Mawes",
      image: "assets/images/2.png",
      price: "\$ 199.00",
      color: const Color(0xFF5B2922).withOpacity(0.2),
      rate: 4.5,
      detailImages: [
        ProductImage(
          id: 1,
          url: "assets/images/1.png",
          description: "Áo khoác Uniqlo chất lượng cao",
        ),
        ProductImage(
          id: 2,
          url: "assets/images/2.png",
          description: "Mặt trước áo khoác Uniqlo",
        ),
        ProductImage(
          id: 3,
          url: "assets/images/3.png",
          description: "Mặt sau áo khoác Uniqlo",
        ),
      ],
      description:
          "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."),
  Products(
      id: 03,
      branchModel: BranchModel(name: "adidas", asset: "asset/icons/adidas.svg"),
      title: "Classic Mawes",
      image: "assets/images/3.png",
      price: "\$ 199.00",
      color: const Color(0xFF343F5B).withOpacity(0.2),
      rate: 4.5,
      detailImages: [
        ProductImage(
          id: 1,
          url: "assets/images/1.png",
          description: "Áo khoác Uniqlo chất lượng cao",
        ),
        ProductImage(
          id: 2,
          url: "assets/images/2.png",
          description: "Mặt trước áo khoác Uniqlo",
        ),
        ProductImage(
          id: 3,
          url: "assets/images/3.png",
          description: "Mặt sau áo khoác Uniqlo",
        ),
      ],
      description:
          "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."),
  Products(
      id: 04,
      branchModel: BranchModel(name: "adidas", asset: "asset/icons/adidas.svg"),
      title: "Classic Mawes",
      image: "assets/images/4.png",
      price: "\$ 199.00",
      color: const Color(0xFF353535).withOpacity(0.2),
      rate: 4.5,
      description:
          "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."),
  Products(
      id: 05,
      title: "Classic Mawes",
      image: "assets/images/5.png",
      price: "\$ 199.00",
      branchModel: BranchModel(name: "adidas", asset: "asset/icons/adidas.svg"),
      color: const Color(0xFFB54F4F).withOpacity(0.2),
      detailImages: [
        ProductImage(
          id: 1,
          url: "assets/images/1.png",
          description: "Áo khoác Uniqlo chất lượng cao",
        ),
        ProductImage(
          id: 2,
          url: "assets/images/2.png",
          description: "Mặt trước áo khoác Uniqlo",
        ),
        ProductImage(
          id: 3,
          url: "assets/images/3.png",
          description: "Mặt sau áo khoác Uniqlo",
        ),
      ],
      rate: 4.5,
      description:
          "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."),
  Products(
      id: 06,
      title: "Classic Mawes",
      image: "assets/images/6.png",
      price: "\$ 199.00",
      branchModel: BranchModel(name: "adidas", asset: "asset/icons/adidas.svg"),
      color: const Color(0xFFDFA2C5).withOpacity(0.2),
      detailImages: [
        ProductImage(
          id: 1,
          url: "assets/images/1.png",
          description: "Áo khoác Uniqlo chất lượng cao",
        ),
        ProductImage(
          id: 2,
          url: "assets/images/2.png",
          description: "Mặt trước áo khoác Uniqlo",
        ),
        ProductImage(
          id: 3,
          url: "assets/images/3.png",
          description: "Mặt sau áo khoác Uniqlo",
        ),
      ],
      rate: 4.5,
      description:
          "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."),
  Products(
      id: 07,
      title: "Classic Mawes",
      image: "assets/images/7.png",
      price: "\$ 199.00",
      branchModel: BranchModel(name: "adidas", asset: "asset/icons/adidas.svg"),
      color: const Color(0xFF1D1B2B).withOpacity(0.2),
      detailImages: [
        ProductImage(
          id: 1,
          url: "assets/images/1.png",
          description: "Áo khoác Uniqlo chất lượng cao",
        ),
        ProductImage(
          id: 2,
          url: "assets/images/2.png",
          description: "Mặt trước áo khoác Uniqlo",
        ),
        ProductImage(
          id: 3,
          url: "assets/images/3.png",
          description: "Mặt sau áo khoác Uniqlo",
        ),
      ],
      rate: 4.5,
      description:
          "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."),
  Products(
      id: 08,
      title: "Classic Mawes",
      branchModel: BranchModel(name: "adidas", asset: "asset/icons/adidas.svg"),
      image: "assets/images/8.png",
      price: "\$ 199.00",
      color: const Color(0xFFFF98BA).withOpacity(0.2),
      detailImages: [
        ProductImage(
          id: 1,
          url: "assets/images/1.png",
          description: "Áo khoác Uniqlo chất lượng cao",
        ),
        ProductImage(
          id: 2,
          url: "assets/images/2.png",
          description: "Mặt trước áo khoác Uniqlo",
        ),
        ProductImage(
          id: 3,
          url: "assets/images/3.png",
          description: "Mặt sau áo khoác Uniqlo",
        ),
      ],
      rate: 4.5,
      description:
          "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."),
];
