import 'package:flutter/material.dart';

class InvoicePage extends StatefulWidget {
  const InvoicePage({super.key});

  @override
  State<InvoicePage> createState() => _InvoicePageState();
}

class _InvoicePageState extends State<InvoicePage> {
  @override
  Widget build(BuildContext context)
   {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Overview',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const SizedBox(height: 20),
          const Text(
            'Recent Invoices',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView(
              children: List.generate(5, (index) => _buildInvoiceTile(index)),
            ),
          ),
        ],
      ),
    );
  }

    Widget _buildInvoiceTile(int index) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.receipt, color: Colors.blue),
        title: Text('Invoice #${1000 + index}'),
        subtitle: const Text('Client: ABC Corp - \$500'),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {},
      ),
    );
  }
}