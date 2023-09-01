import 'package:flutter/material.dart';
import 'package:mini_commerce/components/appstyle.dart';


class CakeProduct extends StatefulWidget {
  const CakeProduct({
    super.key,
    required this.price,
    required this.name,
    required this.image,
  });

  final String price;
  final String name;
  final String image;

  @override
  State<CakeProduct> createState() => _CakeProductState();
}

class _CakeProductState extends State<CakeProduct> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 20, 0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width * 0.47,
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                spreadRadius: 1,
                blurRadius: 0.6,
                offset: Offset(1, 1),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  //IMAGE(S) FOR MAIN DISPLAY
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.27,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        widget.image,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    top: 10,
                    child: GestureDetector(
                      onTap: null,
                      child: const Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.name,
                        style: appstyleWithHT(
                          36,
                          Colors.black,
                          FontWeight.w600,
                          1.1,
                        ),
                      ),
                      Text(
                        widget.price,
                        style: appstyle(
                          30,
                          Colors.black,
                          FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
