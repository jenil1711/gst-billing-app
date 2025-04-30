import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../providers/theme_provider.dart';
import 'products_screen.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('GST Billing App'),
        actions: [
          IconButton(
            icon: Icon(
              themeMode == ThemeMode.dark ? Icons.light_mode : Icons.dark_mode,
            ),
            onPressed: () {
              ref.read(themeProvider.notifier).setTheme(
                    themeMode == ThemeMode.dark
                        ? ThemeMode.light
                        : ThemeMode.dark,
                  );
            },
          ),
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
            },
          ),
        ],
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(16),
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        children: [
          _buildGridItem(
            context,
            'Products',
            Icons.inventory_2,
            Colors.blue,
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProductsScreen(),
                ),
              );
            },
          ),
          _buildGridItem(
            context,
            'Invoices',
            Icons.receipt_long,
            Colors.green,
            () {
              // TODO: Navigate to invoices screen
            },
          ),
          _buildGridItem(
            context,
            'Customers',
            Icons.people,
            Colors.orange,
            () {
              // TODO: Navigate to customers screen
            },
          ),
          _buildGridItem(
            context,
            'Reports',
            Icons.bar_chart,
            Colors.purple,
            () {
              // TODO: Navigate to reports screen
            },
          ),
        ],
      ),
    );
  }

  Widget _buildGridItem(
    BuildContext context,
    String title,
    IconData icon,
    Color color,
    VoidCallback onTap,
  ) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 48,
              color: color,
            ),
            const SizedBox(height: 16),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
