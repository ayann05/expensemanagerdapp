import 'package:expensemanagerdapp/view/ui/dashboard/dashboardPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ExpenseManagerDapp());
}

class ExpenseManagerDapp extends StatefulWidget {
  const ExpenseManagerDapp({super.key});
  @override
  State<ExpenseManagerDapp> createState() => _ExpenseManagerDappState();
}

class _ExpenseManagerDappState extends State<ExpenseManagerDapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      '/': (context) => DashboardPage(),
    });
  }
}
