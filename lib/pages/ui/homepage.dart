import 'package:flutter/material.dart';
import 'package:mini_commerce/components/appstyle.dart';
import 'package:mini_commerce/components/buttons/cupcake_product.dart';
import 'package:mini_commerce/components/buttons/product_card.dart';

import 'package:mini_commerce/data/cupcake_data.dart';
import 'package:mini_commerce/data/data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.cakeproduct});
  final List<CakeProduct> cakeproduct;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  // void cakeDetailPage(CakeProduct cakeProduct) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => DetailScreen(cakeproduct: cakeProduct, cupcakeproduct: cupcakeproduct, donutProduct: null,),
  //     ),
  //   );
  // }
  
  late final TabController _tabController =
      TabController(length: 3, vsync: this);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe2e2e2),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            //TAB BAR SECTION
            Container(
              padding: const EdgeInsets.fromLTRB(16.0, 45.0, 0, 0),
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/bgimg.jpg"),
                ),
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Cake Hub",
                      style: appstyleWithHT(
                        42,
                        Colors.white,
                        FontWeight.bold,
                        1.2,
                      ),
                    ),
                    TabBar(
                      padding: EdgeInsets.zero,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorColor: Colors.transparent,
                      controller: _tabController,
                      isScrollable: true,
                      labelColor: Colors.white,
                      labelStyle: appstyle(24, Colors.white, FontWeight.bold),
                      unselectedLabelColor: Colors.grey.withOpacity(0.3),
                      tabs: const [
                        Tab(text: "Cake"),
                        Tab(text: "Cup Cake"),
                        Tab(text: "Donut"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.265),
              child: Container(
                padding: const EdgeInsets.only(left: 12.0),
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.405,
                          child: ListView.builder(
                              itemCount: cakeproduct.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                //CAKE PRODUCT IMAGE ON DISPLAY
                                return GestureDetector(

                                  //NAVIGATION TO DO
                                  onTap: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: CakeProduct(
                                      price: cakeproduct[index].price,
                                      name: cakeproduct[index].name,
                                      image: cakeproduct[index].image,
                                    ),
                                  ),
                                );
                              }),
                        ),
                        //LATEST CAKE CATEGORIES
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  12.0, 20.0, 12.0, 20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Latest Cakes",
                                    style: appstyle(
                                      24,
                                      Colors.black,
                                      FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Show All",
                                        style: appstyle(
                                          22,
                                          Colors.black,
                                          FontWeight.w500,
                                        ),
                                      ),
                                      const Icon(
                                        Icons.arrow_forward,
                                        size: 20,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        //LATEST CAKES IMAGES
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.12,
                          child: ListView.builder(
                              itemCount: 4,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(16),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.white,
                                          spreadRadius: 1,
                                          blurRadius: 0.8,
                                          offset: Offset(0, 1),
                                        ),
                                      ],
                                    ),
                                    height: MediaQuery.of(context).size.height *
                                        0.12,
                                    width: MediaQuery.of(context).size.width *
                                        0.28,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(16),
                                      child: Image.asset(
                                        "assets/cake1.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                    //CUP CAKE OF HOMEPAGE
                    Column(
                      children: [
                        Scaffold(
                          backgroundColor: const Color(0xffe2e2e2),
                          body: SizedBox(
                            height: MediaQuery.of(context).size.height,
                            child: Stack(
                              children: [
                                //TAB BAR SECTION
                                Container(
                                  padding: const EdgeInsets.fromLTRB(
                                      16.0, 45.0, 0, 0),
                                  height:
                                      MediaQuery.of(context).size.height * 0.4,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/bgimg.jpg"),
                                    ),
                                  ),
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Cake Hub",
                                          style: appstyleWithHT(
                                            42,
                                            Colors.white,
                                            FontWeight.bold,
                                            1.2,
                                          ),
                                        ),
                                        TabBar(
                                          padding: EdgeInsets.zero,
                                          indicatorSize:
                                              TabBarIndicatorSize.label,
                                          indicatorColor: Colors.transparent,
                                          controller: _tabController,
                                          isScrollable: true,
                                          labelColor: Colors.white,
                                          labelStyle: appstyle(24, Colors.white,
                                              FontWeight.bold),
                                          unselectedLabelColor:
                                              Colors.grey.withOpacity(0.3),
                                          tabs: const [
                                            Tab(text: "Cake"),
                                            Tab(text: "Cup Cake"),
                                            Tab(text: "Donut"),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.height *
                                          0.265),
                                  child: Container(
                                    padding: const EdgeInsets.only(left: 12.0),
                                    child: TabBarView(
                                      controller: _tabController,
                                      children: [
                                        Column(
                                          children: [
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.405,
                                              child: ListView.builder(
                                                  itemCount: cupcakeproduct.length,
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  itemBuilder:
                                                      (context, index) {
                                                    //CUP CAKE PRODUCT IMAGE ON DISPLAY
                                                    return GestureDetector(
                                                      onTap: () {},
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(5.0),
                                                        child: CupCakeProduct(
                                                          price:
                                                              cupcakeproduct[index]
                                                                  .price,
                                                          name:
                                                              cupcakeproduct[index]
                                                                  .name,
                                                          image:
                                                              cupcakeproduct[index]
                                                                  .image,
                                                        ),
                                                      ),
                                                    );
                                                  }),
                                            ),
                                          ],
                                        ),
                                        // DONUT OF HOMEPAGE
                                        Column(
                                          children: [
                                            Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.405,
                                              color: Colors.green,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
