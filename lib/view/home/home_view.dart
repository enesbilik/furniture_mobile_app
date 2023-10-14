import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_mobile_app/constants/borders.dart';
import 'package:furniture_mobile_app/constants/paddings.dart';
import 'package:furniture_mobile_app/widgets/custom_text_field.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: AppPadding().pA20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextField(
                  autofocus: true,
                  hintText: 'Search Furniture',
                  icon: Icon(Icons.search_outlined),
                ),
                SizedBox(height: 25),
                Image.network(
                  "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/furniture-banner-template-design-a636dbc0cd8fcad1e4f5c65dc3746501_screen.jpg?ts=1609919679",
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Category",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                    Text("See All")
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: Container(
                            padding: AppPadding().pA10,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.amber,
                            ),
                            child: Image.network(
                              "https://static.vecteezy.com/system/resources/previews/011/794/199/non_2x/fabric-armchair-soft-cushion-with-metal-leg-3d-rendering-modern-interior-design-for-living-room-free-png.png",
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text("Sofa"),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: Container(
                            padding: AppPadding().pA10,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.amber,
                            ),
                            child: Image.network(
                              "https://static.vecteezy.com/system/resources/previews/011/794/199/non_2x/fabric-armchair-soft-cushion-with-metal-leg-3d-rendering-modern-interior-design-for-living-room-free-png.png",
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text("Sofa"),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: Container(
                            padding: AppPadding().pA10,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.amber,
                            ),
                            child: Image.network(
                              "https://static.vecteezy.com/system/resources/previews/011/794/199/non_2x/fabric-armchair-soft-cushion-with-metal-leg-3d-rendering-modern-interior-design-for-living-room-free-png.png",
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text("Sofa"),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: Container(
                            padding: AppPadding().pA10,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.amber,
                            ),
                            child: Image.network(
                              "https://static.vecteezy.com/system/resources/previews/011/794/199/non_2x/fabric-armchair-soft-cushion-with-metal-leg-3d-rendering-modern-interior-design-for-living-room-free-png.png",
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text("Sofa"),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "Newest",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 20),
                GridView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 0.8),
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            padding: AppPadding().pA20,
                            decoration: BoxDecoration(
                              borderRadius: AppBorder().brA10,
                              color: Colors.grey[200],
                            ),
                            child: Padding(
                              padding: AppPadding().pA20,
                              child: Image.network(
                                  "https://static.vecteezy.com/system/resources/previews/011/794/199/non_2x/fabric-armchair-soft-cushion-with-metal-leg-3d-rendering-modern-interior-design-for-living-room-free-png.png"),
                            ),
                          ),
                          SizedBox(height: 4),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Sofa Chair"),
                                  Text(
                                    "\$120.00",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star_half_rounded,
                                    color: Colors.amber,
                                  ),
                                  Text(
                                    "3.00",
                                    style: TextStyle(color: Colors.grey[700]),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
