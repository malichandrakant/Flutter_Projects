import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Your original logic - untouched
  final Uri linkUri = Uri.parse('https://jsonplaceholder.typicode.com/guide/');
  final Uri phoneUri = Uri(scheme: 'tel', path: '9322369749');
  final Uri sms = Uri(scheme: 'sms', path: '9322369749');
  final Uri emailUri = Uri(
    scheme: "mailto",
    path: 'abc@gmail.com',
    query: 'subject=Support Request&body=Hello, I need help with...',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Modern AppBar with elevation and centered title
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
        title: const Text(
          "Quick Contact",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          // Subtle gradient background for a "real app" aesthetic
          color: Colors.grey[50],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "How can we help you?",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              "Reach out to our team through any of the channels below.",
              style: TextStyle(color: Colors.grey[600], fontSize: 16),
            ),
            const SizedBox(height: 30),

            // Using a Card + ListTile makes it look like a real settings/contact menu
            _buildActionCard(
              title: "Official Website",
              subtitle: "Visit our documentation",
              icon: Icons.language,
              color: Colors.blue,
              onTap: () => launchUrl(linkUri),
            ),

            _buildActionCard(
              title: "Call Support",
              subtitle: "+91 9322369749",
              icon: Icons.phone_in_talk,
              color: Colors.green,
              onTap: () => launchUrl(phoneUri),
            ),

            _buildActionCard(
              title: "Message Us",
              subtitle: "Send a quick SMS",
              icon: Icons.textsms_outlined,
              color: Colors.orange,
              onTap: () => launchUrl(sms),
            ),

            _buildActionCard(
              title: "Email Support",
              subtitle: "abc@gmail.com",
              icon: Icons.email_outlined,
              color: Colors.redAccent,
              onTap: () => launchUrl(emailUri),
            ),
          ],
        ),
      ),
    );
  }

  // Helper widget to keep the code clean and reusable
  Widget _buildActionCard({
    required String title,
    required String subtitle,
    required IconData icon,
    required Color color,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: color.withOpacity(0.1),
                child: Icon(icon, color: color),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      subtitle,
                      style: TextStyle(color: Colors.grey[600], fontSize: 13),
                    ),
                  ],
                ),
              ),
              const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
            ],
          ),
        ),
      ),
    );
  }
}
