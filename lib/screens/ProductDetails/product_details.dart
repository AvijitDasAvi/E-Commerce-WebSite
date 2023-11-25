import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:industrial_project/GlobalWidgets/custom_appbar.dart';
import 'package:industrial_project/const/color.dart';
import 'package:industrial_project/const/helper/custom_button.dart';
import 'package:industrial_project/screens/CartScreen/cart_screen.dart';

class ProductDetailsPage extends StatefulWidget {
  final Map <String , String> product;
  const ProductDetailsPage({super.key, required this.product});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {

  List <String> productVarient = [
    '30',
    '35',
    '40',
    '45',
    '50',
    '55'
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context); // Use for same size in every devices
    return Scaffold(
      extendBodyBehindAppBar: true, // Hide appBar inside the body
      appBar: customAppBar(
        context: context,
        background: Colors.transparent
        ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Image section
            Container(
              height: size.height * .4,
              width: double.infinity,
              color: const Color(0xFFD9D9D9),
              child: Center(
                child: Image.network(widget.product['image']!),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 20.0
              ),
              // Name section
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.product['name'] ?? 'Default Name',
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  // Icon section
                  const Row(
                    children: [
                      Icon(Icons.star , color: Colors.orange,size: 20.0,),
                      Icon(Icons.star , color: Colors.orange,size: 20.0,),
                      Icon(Icons.star , color: Colors.orange,size: 20.0,),
                      Icon(Icons.star , color: Colors.orange,size: 20.0,),
                      Icon(Icons.star , color: Colors.orange,size: 20.0,),
                    ],
                  ),
                  const Gap(10),
                  //Price section $ avality
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.product['price']!,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        'Available in stock',
                        style: TextStyle(
                          color: Colors.black.withOpacity(.5),
                          fontWeight: FontWeight.w500,
                          fontSize: 15
                        ),
                      )
                    ],
                  ),
                  const Gap(10),

                  // About product
                  const Text(
                    'About',
                    style: TextStyle(
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  const Gap(10),
                  Text(
                    "Striking blue color, blue dial and outer gold with small numerals describes this fashionable curren watch. Choose your favorite dial color from five beautiful colors, affordable and easy on pocket curren watch. The stainless steel strap of this timepiece is well polished to give a bright shiny look. Buy this trendy and premium men's watch at very reasonable price.Striking blue color, blue dial and outer gold with small numerals describes this fashionable curren watch. Choose your favorite dial color from five beautiful colors, affordable and easy on pocket curren watch. The stainless steel strap of this timepiece is well polished to give a bright shiny look. Buy this trendy and premium men's watch at very reasonable price.Striking blue color, blue dial and outer gold with small numerals describes this fashionable curren watch. Choose your favorite dial color from five beautiful colors, affordable and easy on pocket curren watch. The stainless steel strap of this timepiece is well polished to give a bright shiny look. Buy this trendy and premium men's watch at very reasonable price.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.black.withOpacity(.5),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15)
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Product Varient 
                    SizedBox(
                      height: 40,
                      child: ListView.builder(
                        shrinkWrap: true,
                        primary: false,
                        itemCount: 6,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context , index){
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            width: 40,
                            decoration: BoxDecoration(
                              color: selectedIndex == index ? AppColor.primaryColor : null,
                              border: Border.all(
                                color: selectedIndex == index ? Colors.transparent : const Color(0xFFD8D3D3),
                                width: 1.5
                              ),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Center(
                              child: Text(
                                productVarient[index],
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: selectedIndex == index ? Colors.white : Colors.black
                            ),
                          ),
                        ),
                      ),
                    );
                  } 
                ),
              ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => CartScreen()));
              },
              child: CustomButton(
                buttonText: 'Add To Cart'
              )
            )
          ],
        ),
      ),
    );
  }
}