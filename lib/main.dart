import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FB Login Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'FB Login Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: const Color(0xFF4967AA),
              child: Column(
                children: <Widget>[

                  const SizedBox(height: 220),
                  const Image(
                    image: AssetImage("assets/fb.png"),
                    height: 60,
                  ),
                  const SizedBox(height: 42),
                  SizedBox(
                    height: 42,
                    child: TextFormField(

                      cursorColor: Colors.white,
                      style: const TextStyle(fontSize: 15, color: Colors.white),
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(vertical: 1, horizontal: 14),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Color(0xFFFFFFFF),
                              )),
                          hintText: "Email or phone number",
                          hintStyle: const TextStyle(fontSize: 15, color: Color(
                              0xFFC9C9C9))),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 42,
                    child: TextFormField(
                      cursorColor: Colors.white,
                      style: const TextStyle(fontSize: 15, color: Colors.white),
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(vertical: 1, horizontal: 14),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Color(0xFFFFFFFF),
                              )),
                          hintText: "Password",
                          hintStyle: const TextStyle(fontSize: 14, color: Color(0xFFC9C9C9)),
                      ),
                      obscureText: true,
                    ),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    height: 42,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF1877F2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        "Log In",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    "Forgot Password?",
                    style: TextStyle(fontSize: 15, color: Color(0xFFFAFCFF)),
                  ),
                  const SizedBox(height: 200),
                  const Text(
                    "Create a new account",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Need help?",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}
