import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BankWithdraw extends StatefulWidget {
  const BankWithdraw({super.key});

  @override
  State<BankWithdraw> createState() => _BankWithdrawState();
}

class _BankWithdrawState extends State<BankWithdraw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade200,
        title: Text(
          "Withdraw",
          style: TextStyle(
              fontFamily: GoogleFonts.mPlusRounded1c().fontFamily,
              fontSize: 20),
        ),
        centerTitle: false,
      ),
      body: Container(
        color: Colors.red.shade200,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Enter the withdraw details:",
              style: TextStyle(
                fontFamily: GoogleFonts.spaceMono().fontFamily,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            SizedBox(height: 20),
            _buildTextField("Address"),
            SizedBox(height: 20),
            _buildTextField("Amount"),
            SizedBox(height: 20),
            _buildTextField("Reason"),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Withdraw",
                style: TextStyle(
                  fontFamily: GoogleFonts.spaceMono().fontFamily,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            )
          ],
        ),
      ),
    );
  }
}

Widget _buildTextField(String labelText) {
  return TextField(
    decoration: InputDecoration(
      labelText: labelText,
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
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
    ),
  );
}
