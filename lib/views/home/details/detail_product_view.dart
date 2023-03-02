import 'package:flutter/material.dart';
import 'package:slicing_foodapp/controllers/detils_product_controller.dart';
import 'package:slicing_foodapp/utils/color.dart';
import 'package:slicing_foodapp/utils/sizedbox.dart';
import 'package:slicing_foodapp/utils/state_util.dart';
import 'package:slicing_foodapp/views/home/details/widgets/handle_price.dart';
import 'package:slicing_foodapp/views/home/details/widgets/product_radio.dart';

class DetailProductView extends StatefulWidget {
  const DetailProductView({super.key});

  @override
  State<DetailProductView> createState() => _DetailProductViewState();
}

class _DetailProductViewState extends State<DetailProductView> {
  @override
  void initState() {
    DetailProductController.init();
    super.initState();
  }

  @override
  void dispose() {
    DetailProductController.disposes();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
            size: 18.0,
          ),
        ),
        title: const Text(
          "Product detail",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 206,
                  width: Get.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(10.0),
                    image: const DecorationImage(
                      image: AssetImage("assets/product.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 20,
                  child: Container(
                    height: 28.0,
                    width: 28.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: orangeColor,
                    ),
                    child: Icon(
                      Icons.favorite,
                      size: 14.0,
                      color: whiteColor,
                    ),
                  ),
                )
              ],
            ),
            normalSizedbox(),
            const Text(
              "Product name",
              style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: yellowColor,
                  size: 17.0,
                ),
                const SizedBox(
                  width: 5.0,
                ),
                const Text(
                  "4.5",
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  width: 5.0,
                ),
                const Text(
                  "(30+)",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Color(0xff9796A1),
                  ),
                ),
                const SizedBox(
                  width: 5.0,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "See Review",
                    style: TextStyle(
                      color: orangeColor,
                      fontSize: 13.0,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            const HandlePrice(),
            normalSizedbox(),
            const Text(
              "Description",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Text(
              "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.",
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w300,
                color: Color(0xff858992),
              ),
            ),
            normalSizedbox(),
            const Text(
              "Choice of Add On",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const ProductRadio(),
          ],
        ),
      ),
      floatingActionButton: Material(
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(20.0),
        color: orangeColor,
        child: InkWell(
          onTap: () {},
          child: SizedBox(
            height: 44.0,
            width: 140,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 24.0,
                  width: 24.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: whiteColor,
                  ),
                  child: Icon(
                    Icons.shopping_bag_sharp,
                    size: 14.0,
                    color: orangeColor,
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Add to cart",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: whiteColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
