import 'package:flutter/material.dart';
import 'package:login/models/product_model.dart';
import 'package:login/screens/products/detail_product_screen.dart';

class ProductGridView extends StatefulWidget {
  const ProductGridView({super.key});

  @override
  State<ProductGridView> createState() => _ProductGridViewState();
}

class _ProductGridViewState extends State<ProductGridView> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;
    return GridView.builder(
        primary: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1,
            mainAxisExtent: height * 32,
            crossAxisSpacing: width * 5,
            mainAxisSpacing: width * 5),
        itemCount: productsList.length,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (BuildContext context, index) {
          final product = productsList[index];
          return Container(
              width: width * 25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   
                  Stack(children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailProductScreen(products: product)));
                      },
                      child: AspectRatio(
                        aspectRatio: 1.0,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                          child: Container(
                            color: product.color,
                            child: Image.asset(
                              product.image,
                        
                              height: height * 20,
                              // width: width * 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        top: 0,
                        right: 0,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite_border_outlined),
                        ))
                  ]),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        product.title,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                        style: TextStyle(
                            fontSize: width * 4,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      Expanded(
                          child: Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Text(product.rate.toString())
                        ],
                      ))
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(product.price,
                            style: TextStyle(
                                fontSize: width * 4,
                                fontWeight: FontWeight.w600,
                                color: Colors.brown)),
                      ),
                      MaterialButton(
                        color: Color.fromARGB(255, 106, 167, 216),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        onPressed: () {},
                        child: const Icon(Icons.add_shopping_cart_rounded),
                      )
                    ],
                  ),
                ],
              ));
        });
  }
}
