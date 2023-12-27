import 'package:flutter/material.dart';


import '../foodcategory/pharata.dart';
import '../widget/widget_support.dart';
import 'details.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool pharata = false, curry = false, tandoor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(
              top: 50.0,
              left: 10.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hello Shrays,',
                      style: AppWidget.boldTextFieldStyle(),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20.0),
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(color: Colors.black),
                      child: Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text('Delicious food is ready,',
                    style: AppWidget.HeadLineTextFieldStyle()),
                Text('Discover and Get Great Food,',
                    style: AppWidget.LightTextFieldStyle()),
                SizedBox(
                  height: 20,
                ),
                Container(
                    margin: EdgeInsets.only(right: 40.0), child: showItem()),
                SizedBox(
                  height: 20.0,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Details()));},
                        child: Container(
                          margin: EdgeInsets.all(4),
                          child: Material(
                            elevation: 10.0,
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              padding: EdgeInsets.all(14),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image(
                                      image: AssetImage('images/salad.png'),
                                      width: 150.0,
                                      height: 150.0,
                                      fit: BoxFit.cover),
                                  Text(
                                    'Idly',
                                    style: AppWidget.HeadLineTextFieldStyle(),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    'Fresh And Healdy',
                                    style: AppWidget.semiBoldTextFieldStyle(),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    'Rs.200',
                                    style: AppWidget.HeadLineTextFieldStyle(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Container(
                        margin: EdgeInsets.all(4),
                        child: Material(
                          elevation: 10.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.all(14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                    image: AssetImage('images/salad.png'),
                                    width: 150.0,
                                    height: 150.0,
                                    fit: BoxFit.cover),
                                Text(
                                  'Salad',
                                  style: AppWidget.HeadLineTextFieldStyle(),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  'Fresh And Healdy',
                                  style: AppWidget.semiBoldTextFieldStyle(),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  'Rs.200',
                                  style: AppWidget.HeadLineTextFieldStyle(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Container(
                        margin: EdgeInsets.all(4),
                        child: Material(
                          elevation: 10.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.all(14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                    image: AssetImage('images/salad.png'),
                                    width: 150.0,
                                    height: 150.0,
                                    fit: BoxFit.cover),
                                Text(
                                  'Salad',
                                  style: AppWidget.HeadLineTextFieldStyle(),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  'Fresh And Healdy',
                                  style: AppWidget.semiBoldTextFieldStyle(),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  'Rs.200',
                                  style: AppWidget.HeadLineTextFieldStyle(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(right: 20.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30.0,
                          ),
                          Image(
                            image: AssetImage('images/salad.png'),
                            height: 120,
                            width: 120,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Column(
                            children: [
                              Container(
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: Text(
                                    'Madeterrian ChickPea Salad',
                                    style: AppWidget.HeadLineTextFieldStyle(),
                                  )),
                              SizedBox(
                                height: 5.0,
                              ),
                              Container(
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: Text(
                                    'Honey Goat Cheese',
                                    style: AppWidget.semiBoldTextFieldStyle(),
                                  )),
                              SizedBox(
                                height: 5.0,
                              ),
                              Container(
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: Text(
                                    'Rs.200 ',
                                    style: AppWidget.HeadLineTextFieldStyle(),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.only(right: 20.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30.0,
                          ),
                          Image(
                            image: AssetImage('images/salad.png'),
                            height: 120,
                            width: 120,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Column(
                            children: [
                              Container(
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: Text(
                                    'Madeterrian ChickPea Salad',
                                    style: AppWidget.HeadLineTextFieldStyle(),
                                  )),
                              SizedBox(
                                height: 5.0,
                              ),
                              Container(
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: Text(
                                    'Honey Goat Cheese',
                                    style: AppWidget.semiBoldTextFieldStyle(),
                                  )),
                              SizedBox(
                                height: 5.0,
                              ),
                              Container(
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: Text(
                                    'Rs.200 ',
                                    style: AppWidget.HeadLineTextFieldStyle(),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 30,
        ),
        GestureDetector(
          onTap: () {
            pharata = true;
            curry = false;
            tandoor = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            child: Container(
              decoration:
                  BoxDecoration(color: pharata ? Colors.black : Colors.white),
              padding: EdgeInsets.all(10),
              child: Image.asset(
                'images/pharata2.jpg',
                height: 50.0,
                width: 40.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 30,
        ),
        GestureDetector(
          onTap: () {
            pharata = false;
            curry = true;
            tandoor = false;

            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            child: Container(
              decoration:
                  BoxDecoration(color: curry ? Colors.black : Colors.white),
              padding: EdgeInsets.all(10),
              child: Image.asset(
                'images/gravy.jpg',
                height: 50.0,
                width: 40.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 30,
        ),
        GestureDetector(
          onTap: () {
            pharata = false;
            curry = false;
            tandoor = true;

            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            child: Container(
              decoration:
                  BoxDecoration(color: tandoor ? Colors.black : Colors.white),
              padding: EdgeInsets.all(10),
              child: Image.asset(
                'images/tandoor.png',
                height: 50.0,
                width: 40.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 30,
        ),
      ],
    );
  }
}
