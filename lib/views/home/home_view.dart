import 'package:flutter/material.dart';
import 'package:slicing_foodapp/utils/color.dart';
import 'package:slicing_foodapp/utils/sizedbox.dart';

import 'package:slicing_foodapp/views/home/widgets/featured_foods.dart';
import 'package:slicing_foodapp/views/home/widgets/form_search.dart';
import 'package:slicing_foodapp/views/home/widgets/header_home.dart';
import 'package:slicing_foodapp/views/home/widgets/home_discount.dart';
import 'package:slicing_foodapp/views/home/widgets/menu_order.dart';
import 'package:slicing_foodapp/views/home/widgets/see_all.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchC = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            normalSizedbox(),
            const HeaderHome(),
            normalSizedbox(),
            Row(
              children: [
                Expanded(
                  child: FormSearch(
                    textEditingController: searchC,
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  child: Icon(
                    Icons.filter_alt,
                    color: orangeColor,
                  ),
                )
              ],
            ),
            normalSizedbox(),
            const HomeDiscount(),
            normalSizedbox(),
            const Text(
              "What are you craving for?",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const MenuOrder(),
            normalSizedbox(),
            SeeAll(
              title: "Featured Foods",
              onTap: () {},
            ),
            const SizedBox(
              height: 10.0,
            ),
            SizedBox(
              height: 230,
              child: ListView.builder(
                itemCount: 5,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const FeaturedFoods();
                },
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            SeeAll(
              title: "Popular Items",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
