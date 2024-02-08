import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var emailControlle = TextEditingController();
  var pwdilControlle = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(30),
        //crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Image.asset(
            'assets/coffee.jpg',
            height: 70,
            width: 772,
          ),
          const SizedBox(height: 125),
          const Text(
            "Welcome back",
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          TextFormField(
            controller: emailControlle,
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.mail,
                color: Colors.black,
              ),
              hintText: "Email/phone number",
            ),
          ),
          TextFormField(
            controller: pwdilControlle,
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.black,
              ),
              hintText: "password",
            ),
          ),
          Row(
            children: [
              Checkbox(
                value: false,
                onChanged: (v) {},
              ),
              const Text(
                "Remeber me ",
                style: TextStyle(color: Colors.pink),
              ),
              const Spacer(),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forget Password ?",
                    style: TextStyle(color: Colors.pink),
                  )),
            ],
          ),
          const SizedBox(
            height: 62,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
            child: const Text("Login"),
          ),
          const SizedBox(height: 32),
          const Align(
            alignment: Alignment.center,
            child: Text(
              "or Login with",
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/fb.jpg',
                height: 38,
              ),
              SizedBox(width:20),
              Image.asset(
                'assets/Instragram.jpg',
                height: 38,
              ),SizedBox(width:20),
              Image.asset(
                'assets/Linkdin.jpg',
                height: 38,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Don't have an account?"),
              TextButton(
                onPressed: () {}, // Implement sign up logic
                child:
                    const Text("Sign up", style: TextStyle(color: Colors.pink)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}