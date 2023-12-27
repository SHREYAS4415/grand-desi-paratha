import 'package:flutter/material.dart';

import '../widget/widget_support.dart';


class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.black,
                )),
            Image(
              image: AssetImage('images/salad.png'),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              fit: BoxFit.fill,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Madetarrian Saladr',
                      style: AppWidget.semiBoldTextFieldStyle(),
                    ),
                    Text(
                      'ChickPea Salad',
                      style: AppWidget.HeadLineTextFieldStyle(),
                    ),
                  ],
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    if (a > 1) {
                      --a;
                    }

                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                    child: Icon(Icons.remove, color: Colors.white),
                  ),
                ),
                SizedBox(width: 20.0),
                Text(
                  a.toString(),
                  style: AppWidget.HeadLineTextFieldStyle(),
                ),
                SizedBox(width: 20.0),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      ++a;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                )
              ],
            ),
            Text(
              'all goys plse order and get wt ever u want'
              'hckhzxkczkxcjkzxcjzkxcjkzxjz'
              'xck.xnckzxkzjlczlczxklzxmlvvzxlx/vmcvcvv'
              'xcvcvcvcxvxcv'
              'vcx'
              'xcvxc'
              'vxcvxv'
              'xcvxcvxc',
              style: AppWidget.LightTextFieldStyle(),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total Price ',
                        style: AppWidget.HeadLineTextFieldStyle(),
                      ),
                      Text(
                        'Rs.200',
                        style: AppWidget.boldTextFieldStyle(),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Add to cart',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontFamily: 'Poppins'),
                        ),
                        SizedBox(width: 40.0),

                        Container(
                          // width: MediaQuery.of(context).size.width/2,
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: Colors.grey,borderRadius: BorderRadius.circular(8)
                          ),
                          child: Icon(
                            Icons.add_shopping_cart_outlined,
                            color: Colors.white,
                          ),
                        )
                      ],
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
}
