import 'package:flutter/material.dart';
import 'package:slicing_foodapp/utils/color.dart';
import 'package:slicing_foodapp/utils/sizedbox.dart';
import 'package:slicing_foodapp/views/cart/widgets/card_product.dart';
import 'package:slicing_foodapp/views/cart/widgets/card_voucher.dart';
import 'package:slicing_foodapp/views/cart/widgets/price_cart.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Cart",
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
            const CardProduct(),
            normalSizedbox(),
            const CardVoucher(),
            normalSizedbox(),
            const PriceCart(price: "\$19.00", title: "Subtotal"),
            normalSizedbox(),
            const PriceCart(price: "\$1.00", title: "Delivery"),
            normalSizedbox(),
            Row(
              children: const [
                Text(
                  "Total",
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Expanded(
                  child: Text(
                    "(1 items)",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Text(
                  "\$20.0",
                  style: TextStyle(
                    fontSize: 19.0,
                  ),
                ),
                Text(
                  "USD",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Material(
                  clipBehavior: Clip.antiAlias,
                  color: orangeColor,
                  borderRadius: BorderRadius.circular(22.0),
                  child: InkWell(
                    onTap: () {},
                    child: SizedBox(
                      height: 55.0,
                      width: 194.0,
                      child: Center(
                        child: Text(
                          "Checkout",
                          style: TextStyle(fontSize: 15.0, color: whiteColor),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
