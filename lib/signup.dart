import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/home.dart';
import 'package:statemanagement/provider.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan.shade100,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Center(
                child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Column(children: [
                const Text("Sign Up",
                    style:
                        TextStyle(fontSize: 40, fontWeight: FontWeight.w400)),
                const SizedBox(
                  height: 50,
                ),
                Consumer<CartProvider>(builder:
                    (BuildContext context, CartProvider value, Widget? child) {
                  return Column(
                    children: [
                      TextField(
                        controller: value.nameController,
                        decoration: const InputDecoration(
                            hintText: "First Name",
                            label: Text("Name"),
                            border: OutlineInputBorder()),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: value.emailController,
                        decoration: const InputDecoration(
                            hintText: "email@gmail.com",
                            label: Text("Email"),
                            border: OutlineInputBorder()),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: value.numberController,
                        decoration: const InputDecoration(
                            hintText: "0*******",
                            label: Text("Phone Number"),
                            border: OutlineInputBorder()),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: value.passwordController,
                        decoration: const InputDecoration(
                            hintText: "your password",
                            label: Text("Password"),
                            border: OutlineInputBorder()),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'I Agree with the services of project',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 45,
                      ),
                      ElevatedButton(
                          style: const ButtonStyle(
                              minimumSize:
                                  WidgetStatePropertyAll(Size(300, 60)),
                              backgroundColor:
                                  WidgetStatePropertyAll(Colors.black)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Home()));
                          },
                          child: const Text("Sign Up",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold)))
                    ],
                  );
                })
              ]),
            )),
          ),
        ));
  }
}
