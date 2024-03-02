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

                  const Spacer(flex:1),
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
                              color: Color(0xFF888888),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Color(0xFF848484),
                              )),
                          hintText: "Email or phone number",
                          hintStyle: const TextStyle(fontSize: 15, color: Color(0xFF848484))),
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
                              color: Color(0xFF848484),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Color(0xFF848484),
                              )),
                          hintText: "Password",
                          hintStyle: const TextStyle(fontSize: 14, color: Color(0xFF848484)),
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
                ],
              ),
            ),
          ),
        ),
    );
  }
}
