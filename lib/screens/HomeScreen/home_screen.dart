import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:industrial_project/GlobalWidgets/custom_appbar.dart';
import 'package:industrial_project/const/color.dart';
import 'package:industrial_project/const/confiq.dart';
import 'package:industrial_project/screens/ProductDetails/product_details.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<String> sliderImage = [
    'https://www.shutterstock.com/image-vector/1111-mega-salesingles-daysale-flyerweb-260nw-1835900425.jpg',
    'https://c8.alamy.com/comp/MRM74Y/vector-design-of-discount-50-new-arrival-product-promotion-banner-MRM74Y.jpg',
    'https://thestateplate.com/cdn/shop/files/No_Coupon_Required_480x480_f275a922-9f7d-47bb-9de3-06f7d7b7b9bc.webp?v=1682409222&width=3840'
  ];

  List<Map<String,String>> categories = [
    {
      'icon' : 'assets/images/1.png'
    },
    {
      'icon' : 'assets/images/2.png'
    },
    {
      'icon' : 'assets/images/3.png'
    },
    {
      'icon' : 'assets/images/4.png'
    },
    {
      'icon' : 'assets/images/5.png'
    }
  ];

  List<Map<String,String>> products = [
    {
      'image' : 'assets/images/watch.png',
      'name' : 'Mibro watch 4',
      'price' : '\$499',
    },
    {
      'image' : 'assets/images/watch.png',
      'name' : 'Redmi watch 2',
      'price' : '\$200',
    },
    {
      'image' : 'assets/images/watch.png',
      'name' : 'Apple watch 4',
      'price' : '\$699',
    },
    {
      'image' : 'assets/images/watch.png',
      'name' : 'Naviforce watch',
      'price' : '\$349',
    },
    {
      'image' : 'assets/images/watch.png',
      'name' : 'Shok',
      'price' : '\$299',
    },
    {
      'image' : 'assets/images/watch.png',
      'name' : 'Mibro watch 4',
      'price' : '\$499',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context: context,
        title: AppConfiq.appName,
        isLeading: Icon(Icons.menu),
        action: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search))
        ]
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hello Avijit 👋",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18
              ),
              ),
              Text("Let's start shopping",
              style: TextStyle(
                color: Colors.black.withOpacity(.5),
              ),
              ),
              Container(
                height: 150,
                width: double.infinity,
                margin: EdgeInsets.only(
                  top: 20,
                  bottom: 15
                ),
                child: CarouselSlider.builder(
                  itemCount: 3,
                  itemBuilder: (context, index, realIndex) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(image: NetworkImage(sliderImage[index]),
                        fit: BoxFit.cover
                        )
                      ),
                    );
                  },
                  options: CarouselOptions(
                    autoPlay: true,
                    autoPlayCurve: Curves.easeInOut,
                    enlargeCenterPage: true
                  )
                  ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Top Categories',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                  ),
                  TextButton(
                    onPressed: (){}, 
                    child: Text('See All',
                    style: TextStyle(
                      color: AppColor.primaryColor
                      ),
                    )
                  )
                ],
              ),
              SizedBox(height: 5,),
              SizedBox(
                height: 62,
                child: ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  primary: false,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                    return Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 64,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFFF2F2F2),
                        border: Border.all(
                          color: Color(0xFFD8D3D3)
                        )
                      ),
                      child: Center(
                        child: Image.asset(categories[index]['icon']!),
                      ),
                    );
                  }
                ),
              ),
              SizedBox(height: 10,),
              Text('Recent Products',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
              ),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  crossAxisCount: 2,
                  // childAspectRatio: .5
                  ), 
                itemCount: 6,
                shrinkWrap: true,
                primary: false,
                itemBuilder: (context, index){
                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=> ProductDetailsPage(product: products[index],)));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFF2F2F2),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 120,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(products[index]['image']!),
                                fit: BoxFit.cover
                                )
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border))
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    products[index]['name']!,
                                    style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500
                                  ),
                                ),
                                Text(
                                  products[index]['price']!,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }
              )
            ],
          ),
        ),
      ),
    );
  }
}