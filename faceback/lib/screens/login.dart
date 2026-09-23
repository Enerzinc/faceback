import 'package:flutter/material.dart';
import 'package:act2/screens/jessa.dart';
import 'package:act2/screens/macy.dart';
import 'package:act2/screens/martin.dart';
import 'package:act2/screens/drei.dart';
import 'package:act2/screens/manuel.dart';
import 'package:act2/screens/saved_acc_login.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  // Declare a variable to store the email value
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.asset(
            'assets/images/log_in_bg.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          SafeArea(
            child: Center(
              child: Container(
                width: 300,
                height: 380,
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10.0,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "Log In",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20.0),
                      TextFormField(
                        controller: _emailController, // Attach controller
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.email),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        validator: (emailAddress) {
                          if (emailAddress == null || emailAddress.isEmpty) {
                            return 'Please enter an email address';
                          }
                          return null; // Return null if validation is successful
                        },
                      ),
                      const SizedBox(height: 20.0),
                      TextFormField(
                        controller: _passwordController,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.lock),
                        ),
                        obscureText: true,
                        validator: (password) {
                          if (password == null || password.isEmpty) {
                            return 'Please enter a password';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 30.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              email = _emailController.text;
                              password = _passwordController.text;
                              if (email == "jss@gmail.com" &&
                                  password == "jss123") {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const JessaScreen(),
                                  ),
                                );
                              } else if (email == 'mcy@gmail.com' &&
                                  password == 'mcy123') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const MacyScreen(),
                                  ),
                                );
                              } else if (email == 'mj@gmail.com' &&
                                  password == 'mj123') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const MartinScreen(),
                                  ),
                                );
                              } else if (email == 'ja@gmail.com' &&
                                  password == 'ja123') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const DreiScreen(),
                                  ),
                                );
                              } else if (email == 'mnl@gmail.com' &&
                                  password == 'mnl123') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ManuelScreen(),
                                  ),
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content:
                                          Text('Incorrect email or password')),
                                );
                              }
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(248, 248, 248, 255),
                            minimumSize: const Size(double.infinity, 50),
                          ),
                          child: const Text(
                            "Submit",
                            style: TextStyle(
                              color: Color.fromARGB(255, 44, 91, 129),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: SizedBox(
                          width: 240,
                          height: 45,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(251, 117, 185, 231),
                              minimumSize: const Size(double.infinity, 50),
                            ),
                            child: const Text(
                              'Switch to saved accounts',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
