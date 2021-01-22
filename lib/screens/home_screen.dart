import 'package:flutter/material.dart';
import 'package:foodie_app/constants.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios, color: Colors.black),
        actions: [Icon(Icons.shopping_cart, color: Colors.black)],
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentIndex,
        onItemSelected: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('home'),
            activeColor: kPrimaryColor,
            inactiveColor: Colors.black26,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text('Favourite'),
            activeColor: kPrimaryColor,
            inactiveColor: Colors.black26,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.people_outline),
            title: Text('People'),
            activeColor: kPrimaryColor,
            inactiveColor: Colors.black26,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Delicious \nfood for you',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Search',
                    enabledBorder: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Chip(
                        backgroundColor: kPrimaryColor,
                        label: Text(
                          'Foods',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Chip(
                        backgroundColor: kPrimaryColor,
                        label: Text(
                          'Drinks',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Chip(
                        backgroundColor: kPrimaryColor,
                        label: Text(
                          'Snacks',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Chip(
                        backgroundColor: kPrimaryColor,
                        label: Text(
                          'Sauce',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FoodCard(
                      text: 'Veggie fresh foods',
                      image: 'assets/images/foods.png',
                    ),
                    FoodCard(
                      text: 'Veggie fresh foods',
                      image: 'assets/images/foods.png',
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FoodCard extends StatelessWidget {
  const FoodCard({
    Key key,
    this.image,
    this.text,
  }) : super(key: key);
  final String image, text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            height: 185,
            width: 130,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 4),
                    color: Color(0xFF393939).withOpacity(0.07),
                    blurRadius: 40,
                  )
                ]),
            child: Center(
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Positioned(
            top: -45,
            left: 15,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(65),
                  color: Color(0xFFC4C4C4).withOpacity(0.3),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 4),
                      color: Color(0xFF393939).withOpacity(0.07),
                      blurRadius: 40,
                    )
                  ]),
              child: Image.asset(image),
            ),
          ),
        ],
      ),
    );
  }
}
