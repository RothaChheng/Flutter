import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Lato'),
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Login to your account", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Image.asset('assets/images/accent.png', height: 50),
            const SizedBox(height: 20),
            TextField(decoration: InputDecoration(labelText: "Email", prefixIcon: Icon(Icons.email), border: OutlineInputBorder())),
            const SizedBox(height: 10),
            TextField(obscureText: true, decoration: InputDecoration(labelText: "Password", prefixIcon: Icon(Icons.lock), border: OutlineInputBorder())),
            Row(
              children: [
                Checkbox(value: false, onChanged: (value) {}),
                const Text("Remember me")
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const WelcomeScreen()),
                  );
                },
                child: const Text("Login", style: TextStyle(color: Colors.white, fontSize: 16)),
              ),
            ),

            const SizedBox(height: 5),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 230, 230, 230),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),  
                onPressed: () {},
                child: const Text("Login with Google", style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 16)),
              ),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const RegisterScreen()),
                );
              },
              child: const Text("Don't have an account? Register"),
            )
          ],
        ),
      ),
    );
  }
}

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Register new account", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Image.asset('assets/images/accent.png', height: 50),
            const SizedBox(height: 20),
            TextField(decoration: InputDecoration(labelText: "Email", prefixIcon: Icon(Icons.email), border: OutlineInputBorder())),
            const SizedBox(height: 10),
            TextField(obscureText: true, decoration: InputDecoration(labelText: "Password", prefixIcon: Icon(Icons.lock), border: OutlineInputBorder())),
            const SizedBox(height: 10),
            TextField(obscureText: true, decoration: InputDecoration(labelText: "Confirm Password", prefixIcon: Icon(Icons.lock), border: OutlineInputBorder())),
            Row(
              children: [
                Checkbox(value: false, onChanged: (value) {}),
                const Text("By creating an account, you agree to our Terms & Conditions")
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                onPressed: () {},
                child: const Text("Register", style: TextStyle(color: Colors.white, fontSize: 16)),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Already have an account? Login"),
            )
          ],
        ),
      ),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Hello Chheng Rotha, Welcome", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)), padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 40)),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Log Out", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
