import 'package:expensemanagerdapp/models/transactions_model.dart';
import 'package:expensemanagerdapp/view/bloc/dashboard_bloc.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BankDeposit extends StatefulWidget {
  final DashboardBloc dashboardBloc;
  const BankDeposit({super.key, required this.dashboardBloc});

  @override
  State<BankDeposit> createState() => _BankDepositState();
}

class _BankDepositState extends State<BankDeposit> {
  final TextEditingController addressController = TextEditingController();
  final TextEditingController amountController = TextEditingController();
  final TextEditingController reasonsController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade100,
        elevation: 0,
        title: Text(
          "Deposit",
          style: TextStyle(
              fontFamily: GoogleFonts.mPlusRounded1c().fontFamily,
              fontSize: 20),
        ),
        centerTitle: false,
      ),
      body: Container(
        color: Colors.green.shade100,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Enter the deposit details:",
              style: TextStyle(
                fontFamily: GoogleFonts.spaceMono().fontFamily,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: addressController,
              decoration: InputDecoration(
                labelText: "Address",
                labelStyle: TextStyle(
                  fontFamily: GoogleFonts.spaceMono().fontFamily,
                  fontSize: 16,
                  color: Colors.grey.shade800,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey.shade400),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.green,
                    width: 2,
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: amountController,
              decoration: InputDecoration(
                labelText: "Amount",
                labelStyle: TextStyle(
                  fontFamily: GoogleFonts.spaceMono().fontFamily,
                  fontSize: 16,
                  color: Colors.grey.shade800,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey.shade400),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.green,
                    width: 2,
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: reasonsController,
              decoration: InputDecoration(
                labelText: "Reason",
                labelStyle: TextStyle(
                  fontFamily: GoogleFonts.spaceMono().fontFamily,
                  fontSize: 16,
                  color: Colors.grey.shade800,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey.shade400),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.green,
                    width: 2,
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                widget.dashboardBloc.add(DashboardDepositEvent(
                    transactionModel: TransactionModel(
                        addressController.text,
                        int.parse(amountController.text),
                        reasonsController.text,
                        DateTime.now())));
                Navigator.pop(context);
              },
              child: Text(
                "Deposit",
                style: TextStyle(
                  fontFamily: GoogleFonts.spaceMono().fontFamily,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade400),
            )
          ],
        ),
      ),
    );
  }
}
