import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:untitled2/payment_gatway/razorpay.dart';

class WalletPage extends StatefulWidget {
  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SubscriptionCard(
                  duration: '1 Week',
                  price: 5.99,
                ),
                SubscriptionCard(
                  duration: '1 Month',
                  price: 19.99,
                ),
                SubscriptionCard(
                  duration: '3 Month',
                  price: 49.99,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SubscriptionCard extends StatefulWidget {
  final String duration;
  final double price;

  SubscriptionCard({required this.duration, required this.price});

  @override
  _SubscriptionCardState createState() => _SubscriptionCardState();
}

class _SubscriptionCardState extends State<SubscriptionCard> {
  bool isSubscribed = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Icon(
              Icons.account_balance_wallet,
              size: 40,
              color: isSubscribed ? Colors.green : Colors.blue,
            ),
            SizedBox(height: 8),
            Text(
              '${widget.duration} Subscription',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '\$${widget.price}',
              style: TextStyle(
                fontSize: 16,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 16),
               ElevatedButton(
                onPressed: () {
                  setState(() {
                    isSubscribed = !isSubscribed;
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>RazoPay()));
                  });

                  print('${widget.duration} Subscription status: $isSubscribed');
                },
                child: Text(isSubscribed ? 'Unsubscribe' : 'Subscribe'),
              ),
          ],
        ),
      ),
    );
  }
}
