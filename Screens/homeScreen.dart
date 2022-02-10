import 'package:flutter/material.dart';
import 'package:mobility/Screens/Create_Account.dart';
import 'package:mobility/Screens/FavouriteScreen.dart';
import 'package:mobility/Screens/OfferScreen.dart';
import 'package:mobility/Screens/ProfileScreen.dart';
import 'package:mobility/Screens/menuScreen.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/HomeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: Stack(children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Good morning Chief!',
                            style: TextStyle(fontSize: 25),
                          ),
                          Image.asset(
                            'assets/images/cart.png',
                            height: 30,
                            width: 30,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Text('Delivering to...'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: DropdownButtonHideUnderline(
                          child: SizedBox(
                        width: 250,
                        child: DropdownButton(
                          value: 'current location',
                          items: [
                            DropdownMenuItem(
                              child: Text('Current Location'),
                              value: 'current location',
                            ),
                          ],
                          icon: Image.asset(
                            'assets/images/down.png',
                            height: 20,
                            width: 20,
                          ),
                          style: TextStyle(fontSize: 20, color: Colors.orange),
                          onChanged: (_) {},
                        ),
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: ShapeDecoration(
                            shape: StadiumBorder(), color: Colors.orange),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.search),
                              hintText: 'search meal'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        padding: const EdgeInsets.only(left: 20),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  'assets/images/jollof.jpg',
                                  height: 80,
                                ),
                              ),
                              Image.asset(
                                "assets/images/chefie.png",
                                height: 30,
                                width: 30,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30.0),
                                child: Image.asset(
                                  'assets/images/piza.jpg',
                                  height: 80,
                                ),
                              ),
                              Image.asset(
                                "assets/images/chefie.png",
                                height: 30,
                                width: 30,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30.0),
                                child: Image.asset(
                                  'assets/images/kingbreak.jpg',
                                  height: 80,
                                ),
                              ),
                              Image.asset(
                                "assets/images/chefie.png",
                                height: 30,
                                width: 30,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30.0),
                                child: Image.asset(
                                  'assets/images/piza.jpg',
                                  height: 80,
                                ),
                              ),
                              Image.asset(
                                "assets/images/chefie.png",
                                height: 30,
                                width: 30,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  'assets/images/jollof.jpg',
                                  height: 80,
                                ),
                              ),
                            ],
                          ),
                        )),
                    SizedBox(
                      height: 20,
                      width: 30,
                    ),
                    CategoryCard(
                        image: Image.asset(
                          'assets/images/shawarma.jpg',
                          fit: BoxFit.cover,
                        ),
                        name: ' Amazing Offers'),
                    SizedBox(
                      width: 20,
                    ),
                    CategoryCard(
                      image: Image.asset(
                        'assets/images/burgerserved.jpg',
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                      name: 'Yummy',
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Popular Restaurants',
                            style: TextStyle(
                              fontSize: 28,
                              color: Colors.orange,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text('View all'),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            child: Image.asset(
                              'assets/images/darkburger.jpg',
                              fit: BoxFit.cover,
                              height: 200,
                              width: double.infinity,
                            ),
                          ),
                          Text("burger by tise",
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
                              )),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/star.png',
                                      height: 20,
                                      width: 20,
                                    ),
                                    Text(
                                      ' 4.9',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      ' (100+ ratings)',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                              width: double.infinity,
                              child: Image.asset(
                                "assets/images/beans.jpg",
                                fit: BoxFit.cover,
                                height: 200,
                                width: double.infinity,
                              )),
                          Text(
                            "Beans and bread by BBSF",
                            style: TextStyle(
                                fontSize: 25,
                                fontStyle: FontStyle.italic,
                                color: Colors.orange),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    Image.asset(
                                      'assets/images/star.png',
                                      height: 20,
                                      width: 20,
                                    ),
                                    Text(
                                      ' 4.9',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      ' (100+ ratings)',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                            width: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Most Popular'),
                                TextButton(
                                  onPressed: () {},
                                  child: Text('View all'),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Recent items',
                                  style: TextStyle(
                                    fontSize: 28,
                                    color: Colors.orange,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text('View all'),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(children: [
                                    Container(
                                      width: 80,
                                      height: 80,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(18),
                                        child: Image.asset(
                                          'assets/images/cream.jpg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Column(children: [
                                      Text(
                                        ' IceCream By Tito',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Image.asset(
                                        'assets/images/star.png',
                                        height: 10,
                                      )
                                    ])
                                  ])
                                ]),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          FloatingActionButton(
                            onPressed: () {
                              Navigator.of(context)
                                ..pushReplacementNamed(HomePage.routeName);
                            },
                            child: Icon(Icons.home),
                          ),
                          AppBar(
                            backgroundColor: Colors.transparent,
                            elevation: 0,
                            title: const Text(''),
                            actions: <Widget>[
                              IconButton(
                                icon: const Icon(Icons.menu),
                                onPressed: () {
                                  Navigator.of(context)
                                    ..pushReplacementNamed(
                                        MenuScreen.routeName);
                                },
                              ),
                              Tooltip(message: 'Menu'),
                              Spacer(),
                              IconButton(
                                icon: Image.asset('assets/images/tag.png'),
                                onPressed: () {
                                  Navigator.of(context)
                                    ..pushReplacementNamed(
                                        OfferScreen.routeName);
                                },
                              ),
                              Spacer(),
                              IconButton(
                                icon: Image.asset('assets/images/user.png'),
                                onPressed: () {
                                  Navigator.of(context)
                                    ..pushReplacementNamed(
                                        ProfileScreen.routeName);
                                },
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                              ),
                              Spacer(),
                              IconButton(
                                icon: const Icon(Icons.favorite_border),
                                onPressed: () {
                                  Navigator.of(context)
                                    ..pushReplacementNamed(
                                        FavouriteScreen.routeName);
                                },
                              ),
                            ],
                          )
                        ])
                  ]),
            ),
          ),
        ]));
  }
}

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Image.asset(
        'assets/images/chicken.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required Image image,
    required String name,
  })  : _image = image,
        _name = name,
        super(key: key);

  final String _name;
  final Image _image;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: 100,
            height: 100,
            decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(19),
            )),
            child: _image,
          ),
        ),
        SizedBox(
          height: 1,
        ),
        Text(
          _name,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
