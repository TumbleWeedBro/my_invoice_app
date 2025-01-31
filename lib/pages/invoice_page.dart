import 'package:flutter/material.dart';

class InvoicePage extends StatefulWidget {
  const InvoicePage({super.key});

  @override
  State<InvoicePage> createState() => _InvoicePageState();
}

class _InvoicePageState extends State<InvoicePage> {
  @override
 // TODO: implement widget
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Card(
            child: ListTile(
              leading: Icon(Icons.account_balance_wallet_rounded),
              title: Text("Invoice 1"),
              subtitle: Text("Invoice 1 description"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.account_balance_wallet_rounded),
              title: Text("Invoice 2"),
              subtitle: Text("Invoice 2 description"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.account_balance_wallet_rounded),
              title: Text("Invoice 3"),
              subtitle: Text("Invoice 3 description"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),      
          
        ],
      )
    );
  }
}