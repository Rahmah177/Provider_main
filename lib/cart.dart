import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/provider.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(
              image: NetworkImage(
                  "https://i0.wp.com/khatwafurniture.com/wp-content/uploads/2021/09/b3a4d37118681ec94b0e7d6c212c74ad.jpg?fit=1200%2C1200&ssl=1")),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 2),
                  ),
                  child: Consumer<CartProvider>(
                    builder: (BuildContext context, CartProvider value,
                        Widget? child) {
                      return IconButton(
                          onPressed: () {
                            value.decCart();
                          },
                          icon: const Icon(
                            Icons.remove,
                            size: 30,
                            color: Colors.black,
                          ));
                    },
                  )),
              const SizedBox(
                width: 20,
              ),
              Consumer<CartProvider>(
                builder:
                    (BuildContext context, CartProvider value, Widget? child) {
                  return Text(
                    "${value.cart}",
                    style: const TextStyle(fontSize: 30),
                  );
                },
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 2),
                  ),
                  child: Consumer<CartProvider>(
                    builder: (BuildContext context, CartProvider value,
                        Widget? child) {
                      return IconButton(
                          onPressed: () {
                            value.incCart();
                          },
                          icon: const Icon(
                            Icons.add,
                            size: 30,
                            color: Colors.black,
                          ));
                    },
                  )),
            ],
          ),
        ],
      )),
    );
  }
}
