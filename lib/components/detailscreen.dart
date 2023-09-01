import 'package:flutter/material.dart';
import 'package:mini_commerce/components/appstyle.dart';
import 'package:mini_commerce/components/buttons/cupcake_product.dart';
import 'package:mini_commerce/components/buttons/donut_product.dart';
import 'package:mini_commerce/components/buttons/product_card.dart';

class DetailScreen extends StatelessWidget {
  final CakeProduct cakeproduct;
  final CupCakeProduct cupcakeproduct;
  final DonutProduct donutProduct;
  const DetailScreen({
    super.key,
    required this.cakeproduct,
    required this.cupcakeproduct,
    required this.donutProduct,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  //DETAIL  SCREEN IMAGE
                  Container(
                    padding: const EdgeInsets.only(left: 10.0),
                    height: MediaQuery.of(context).size.height * 0.5,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(cakeproduct.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  //DETAIL SCREEN BACK ARROW
                  Positioned(
                    top: 30,
                    left: 13,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              //CAKE DETAIL NAME
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cakeproduct.name,
                      textAlign: TextAlign.start,
                      style: appstyle(
                        24.0,
                        Colors.black38,
                        FontWeight.bold,
                      ),
                    ),
                    //CAKE DETAIL PRICE
                    Text(cakeproduct.price),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
