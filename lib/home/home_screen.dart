import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // 1. Global Key for the Form
  final _formKey = GlobalKey<FormState>();

  // 2. Controllers (Correctly assigned)
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // 3. UI State
  bool _isPasswordVisible = false;

  // 4. Modern Input Styling
  InputDecoration _inputStyle(String label, String hint, IconData icon) {
    return InputDecoration(
      labelText: label,
      hintText: hint,
      prefixIcon: Icon(icon),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      filled: true,
      fillColor: Colors.grey[50],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Account"),
        backgroundColor: Colors.amber,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: 10),

              // --- NAME FIELD ---
              TextFormField(
                controller: nameController,
                autofocus: true, // Only the first field gets autofocus
                textInputAction: TextInputAction.next,
                decoration: _inputStyle(
                  "Name",
                  "Enter your name",
                  Icons.person,
                ),
                validator: (val) =>
                    (val == null || val.isEmpty) ? "Name required" : null,
              ),
              const SizedBox(height: 20),

              // --- PHONE FIELD ---
              TextFormField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.next,
                decoration: _inputStyle(
                  "Phone",
                  "10-digit number",
                  Icons.phone,
                ),
                validator: (val) {
                  if (val == null || val.length != 10) return "Enter 10 digits";
                  return null;
                },
              ),
              const SizedBox(height: 20),

              // --- EMAIL FIELD ---
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                decoration: _inputStyle(
                  "Email",
                  "example@mail.com",
                  Icons.email,
                ),
                validator: (val) {
                  if (val == null || !val.contains('@')) return "Invalid email";
                  return null;
                },
              ),
              const SizedBox(height: 20),

              // --- PASSWORD FIELD ---
              TextFormField(
                controller: passwordController,
                obscureText: !_isPasswordVisible,
                textInputAction: TextInputAction.done,
                decoration:
                    _inputStyle(
                      "Password",
                      "Strong password",
                      Icons.lock,
                    ).copyWith(
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () => setState(
                          () => _isPasswordVisible = !_isPasswordVisible,
                        ),
                      ),
                    ),
                validator: (val) =>
                    (val != null && val.length < 8) ? "Min 8 chars" : null,
              ),
              const SizedBox(height: 30),

              // --- SUBMIT BUTTON ---
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Success Logic
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Registration Successful!"),
                        ),
                      );
                    }
                  },
                  child: const Text(
                    "REGISTER",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
