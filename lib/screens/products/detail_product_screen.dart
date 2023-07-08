import 'package:flutter/material.dart';
import '../../widget/detail_item_image_product.dart';
import '/models/product_model.dart';

class DetailProductScreen extends StatelessWidget {
  const DetailProductScreen({super.key, required this.products});
  final Products products;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(products.title!),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.more_vert_rounded))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
              child: Container(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                color: products.color,
                height: 250,
                width: size.width,
                child: Image.asset(
                  products.image!,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 80,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: products.detailImages!.length,
                      itemBuilder: (context, index) {
                        return DetailItemImageProduct(
                          productImage: products.detailImages![index],
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(products.branchModel!.name.toString().toUpperCase(),
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          )),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Text(
                            products.rate!.toString(),
                            style: const TextStyle(fontSize: 14),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    products.title!.toUpperCase(),
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    products.price!.toString(),
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    height: 5,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Select Size",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          )),
                      TextButton(
                        onPressed: () {},
                        child: Text("Size Chart"),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 89,
        padding: EdgeInsets.only(top: 20,left: 10,bottom: 20,right: 10),
        color: Colors.grey.shade300,
        child: Container(
        
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(
                20), // đặt giá trị tương ứng để tạo nút tròn
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              height: 40,
              onPressed: () {},
              child: Text("Buy now".toUpperCase()),
            ),
          ),
        ),
      ),
    );
  }
}
