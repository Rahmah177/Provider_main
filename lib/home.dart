import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/cart.dart';
import 'package:statemanagement/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  CartProvider value = CartProvider();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 85,
          title: Row(
            children: [
              Consumer<CartProvider>(
                builder:
                    (BuildContext context, CartProvider value, Widget? child) {
                  return Text(
                    'Hi, ${value.nameController.text}',
                    style: const TextStyle(color: Colors.black),
                  );
                },
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 14.0),
              child: Stack(alignment: Alignment.topRight, children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: IconButton(
                      color: Colors.black,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.shopping_bag_outlined,
                        size: 40,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3, left: 5),
                  child: CircleAvatar(
                      backgroundColor: Colors.yellow,
                      radius: 11,
                      child: Consumer<CartProvider>(
                        builder: (BuildContext context, CartProvider value,
                            Widget? child) {
                          return Text(
                            "${value.cart}",
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          );
                        },
                      )),
                ),
              ]),
            ),
          ],
        ),
        body: Center(
          child: Column(
            children: [
              const Image(
                image: NetworkImage(
                    "https://i0.wp.com/khatwafurniture.com/wp-content/uploads/2021/09/b3a4d37118681ec94b0e7d6c212c74ad.jpg?fit=1200%2C1200&ssl=1"),
              ),
              Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Consumer<CartProvider>(
                        builder: (BuildContext context, CartProvider value,
                            Widget? child) {
                          return Text(
                            "Welcome ${value.nameController.text}",
                            style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          );
                        },
                      ),
                      Consumer<CartProvider>(
                        builder: (BuildContext context, CartProvider value,
                            Widget? child) {
                          return Text(
                              "Your Email is ${value.emailController.text}",
                              style: const TextStyle(fontSize: 18));
                        },
                      ),
                      Consumer<CartProvider>(
                        builder: (BuildContext context, CartProvider value,
                            Widget? child) {
                          return Text(
                              "Your password is ${value.passwordController.text}",
                              style: const TextStyle(fontSize: 18));
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                              value.decCart();
                            },
                            icon: const Icon(
                              Icons.remove,
                              size: 30,
                              color: Colors.black,
                            ));
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Consumer<CartProvider>(
                    builder: (BuildContext context, CartProvider value,
                        Widget? child) {
                      return Text(
                        "${value.cart}",
                        style: const TextStyle(fontSize: 30),
                      );
                    },
                  ),
                  const SizedBox(
                    width: 15,
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
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.orange),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Cart()));
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.shopping_bag_outlined,
                          size: 40,
                        ),
                        Text(
                          "Add to Cart",
                          style: TextStyle(fontSize: 21),
                        )
                      ],
                    )),
              )
            ],
          ),
        ));
  }
}
