import 'package:flutter/material.dart';
import 'package:slicing_foodapp/utils/state_util.dart';
import 'package:slicing_foodapp/views/home/details/detail_product_view.dart';

import '../../../utils/color.dart';

class FeaturedFoods extends StatelessWidget {
  const FeaturedFoods({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Material(
        color: whiteColor,
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(15.0),
        child: InkWell(
          onTap: () {
            Get.to(page: const DetailProductView());
          },
          child: SizedBox(
            width: 273,
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 136,
                      // width: 260,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(15.0),
                        ),
                        image: DecorationImage(
                          image: AssetImage("assets/product.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Product name",
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.delivery_dining,
                                size: 14.0,
                                color: orangeColor,
                              ),
                              const SizedBox(
                                width: 4.0,
                              ),
                              const Text(
                                "Free delivery",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Color(0xff7E8392),
                                ),
                              ),
                              const SizedBox(
                                width: 8.0,
                              ),
                              Icon(
                                Icons.timer_rounded,
                                size: 14.0,
                                color: orangeColor,
                              ),
                              const SizedBox(
                                width: 4.0,
                              ),
                              const Expanded(
                                child: Text(
                                  "Free delivery",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Color(0xff7E8392),
                                  ),
                                ),
                              ),
                              const Text(
                                "\$9.0",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Container(
                            height: 22.0,
                            width: 54.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: const Color(0xffF6F6F6),
                            ),
                            child: const Center(
                              child: Text(
                                "Salad",
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    height: 26.0,
                    width: 68.08,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: whiteColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "4.5",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Icon(
                          Icons.star,
                          size: 12.0,
                          color: Color(0xffFFC529),
                        ),
                        Text(
                          "(25+)",
                          style: TextStyle(
                            fontSize: 8.0,
                            color: Color(0xff9796A1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    height: 25.0,
                    width: 25.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: orangeColor,
                    ),
                    child: Icon(
                      Icons.favorite,
                      size: 15.0,
                      color: whiteColor,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
