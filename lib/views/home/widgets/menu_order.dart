import 'package:flutter/material.dart';
import 'package:slicing_foodapp/controllers/home_controller.dart';
import 'package:slicing_foodapp/models/menu_model.dart';

class MenuOrder extends StatelessWidget {
  const MenuOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      itemCount: HomeController.listMenu.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
      ),
      itemBuilder: (context, index) {
        MenuModel data = HomeController.listMenu[index];
        return InkWell(
          onTap: data.onTap,
          child: Column(
            children: [
              Image(
                image: data.image!,
                height: 49.0,
                width: 40.0,
              ),
              Text(
                data.title!,
              ),
            ],
          ),
        );
      },
    );
  }
}
