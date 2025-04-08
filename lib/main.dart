import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Portfolio',
      debugShowCheckedModeBanner: false,
      home: const PortfolioPage(),
    );
  }
}

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  // Replace with your actual links
  final String hireMeUrl = 'https://www.canva.com/design/DAGjyRtlPwc/4j6if-dsZwEnCoE2iK2hOA/edit?utm_content=DAGjyRtlPwc&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton';
  final String cvUrl = 'https://www.linkedin.com/in/chheng-rotha-39585432b/';

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blueAccent, width: 3),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              // Logo or App name
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Row(
                    children: [
                      Icon(Icons.airplanemode_active, color: Colors.blue),
                      SizedBox(width: 5),
                      Text(
                        'AeroVision',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Icon(Icons.menu),
                ],
              ),
              const SizedBox(height: 30),
              // Profile Picture
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/images/pic.jpg'),
              ),
              const SizedBox(height: 20),
              const Text(
                "Welcome to my Portfolio",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                "Hi I’m",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              const Text(
                "Chheng Rotha",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              const Text(
                "Product Designer",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                "Collaborating with highly skilled individuals, our agency delivers top-quality services.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 25),
              // Buttons
              ElevatedButton(
                onPressed: () => _launchUrl(hireMeUrl),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text("Hire Me!", style: TextStyle(fontSize: 16, color: Colors.white)),
              ),
              const SizedBox(height: 10),
              OutlinedButton.icon(
                onPressed: () => _launchUrl(cvUrl),
                icon: const Icon(Icons.download),
                label: const Text("Download CV", style: TextStyle(fontSize: 18, color: Colors.blue)),
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  side: const BorderSide(color: Colors.blue),
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
