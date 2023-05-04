import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your Password";
                    }
                    if (value != "OBVA23") {
                      return "Wrong Password";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(20),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 2.0,
                      ),
                    ),
                    labelText: "Password...",
                    labelStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  onEditingComplete: () {
                    if (formKey.currentState!.validate()) {
                      context.go('/HomePage');
                    }
                  },
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              const Text(
                "Please enter your password",
                style: TextStyle(
                  color: Colors.grey,
                  wordSpacing: 1.5,
                  letterSpacing: 2,
                ),
                textAlign: TextAlign.center,
                textScaleFactor: 2,
              ),
              const SizedBox(height: 50),
              Image.asset("assets/images/logo.png", height: 150),
            ],
          ),
        ),
      ),
    );
  }
}
