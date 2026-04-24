import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Map<String, String>> products = const [
    {
      "image": "assets/images/product1.jpeg",
      "name": "Product 1",
      "price": "₹299",
    },
    {
      "image": "assets/images/product2.jpeg",
      "name": "Product 2",
      "price": "₹399",
    },
    {
      "image": "assets/images/product3.jpeg",
      "name": "Product 3",
      "price": "₹499",
    },
    {
      "image": "assets/images/product4.jpeg",
      "name": "Product 4",
      "price": "₹199",
    },
    {
      "image": "assets/images/product5.jpeg",
      "name": "Product 5",
      "price": "₹599",
    },
    {
      "image": "assets/images/product1.jpeg",
      "name": "Product 6",
      "price": "₹299",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final isTablet = MediaQuery.of(context).size.width > 600;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Products GridView Example"),
        backgroundColor: const Color.fromARGB(255, 246, 255, 114),
        centerTitle: true,
      ),

      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: products.length,

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: isTablet ? 4 : 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 0.7,
        ),

        itemBuilder: (context, index) {
          final product = products[index];

          return ProductCard(
            image: product["image"]!,
            name: product["name"]!,
            price: product["price"]!,
          );
        },
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String image;
  final String name;
  final String price;

  const ProductCard({
    super.key,
    required this.image,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(12),
              ),
              child: Image.asset(
                image,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  price,
                  style: const TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
