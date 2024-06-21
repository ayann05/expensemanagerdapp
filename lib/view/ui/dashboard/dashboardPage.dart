import 'package:expensemanagerdapp/view/bloc/dashboard_bloc.dart';
import 'package:expensemanagerdapp/view/ui/deposit/deposit.dart';
import 'package:expensemanagerdapp/view/ui/transactions/transactions.dart';
import 'package:expensemanagerdapp/view/ui/withdraw/withdraw.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final DashboardBloc dashboardBloc = DashboardBloc();
  @override
  void initState() {
    // TODO: implement initState
    dashboardBloc.add(DashboardInitialFechEvent());
    super.initState();
  }

  bool showBalance = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Block Bank",
          style: TextStyle(
              fontFamily: GoogleFonts.mPlusRounded1c().fontFamily,
              fontSize: 20),
        ),
        centerTitle: false,
      ),
      body: BlocConsumer<DashboardBloc, DashboardState>(
        bloc: dashboardBloc,
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          switch (state.runtimeType) {
            //on Loading State
            case DashboardLoadingState():
              return Center(
                child: CircularProgressIndicator(),
              );
            //on Error State
            case DashboardErrorState():
              return Center(
                child: Text("Error !!!"),
              );
            //on Success State
            case DashboardSuccessState:
              final successState = state as DashboardSuccessState;
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                // color: Colors.blue,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          showBalance = !showBalance;
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Your Balance",
                            style: TextStyle(
                              fontFamily: GoogleFonts.spaceMono().fontFamily,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                            width: 20,
                            child: Image(image: Svg("assets/eye.svg")),
                          ),
                        ],
                      ),
                    ),
                    if (showBalance)
                      Row(
                        children: [
                          SizedBox(
                            height: 25,
                            width: 30,
                            child: Image(
                              image: Svg("assets/ethlogo.svg"),
                            ),
                          ),
                          Text(
                            successState.balance.toString() + " ETH",
                            style: TextStyle(
                              fontFamily: GoogleFonts.spaceMono().fontFamily,
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    if (!showBalance)
                      Row(
                        children: [
                          Text(
                            "***",
                            style: TextStyle(
                              fontFamily: GoogleFonts.spaceMono().fontFamily,
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Text("Deposit/Credit"),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  InkWell(
                                    child: Container(
                                      child: SizedBox(
                                        height: 30,
                                        width: 30,
                                        child: Image.asset(
                                            "assets/money_recive.png"),
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => BankDeposit(
                                                    dashboardBloc:
                                                        dashboardBloc,
                                                  )));
                                    },
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              Column(
                                children: [
                                  Text("Send/Withdraw"),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  InkWell(
                                    child: Container(
                                      child: SizedBox(
                                          height: 30,
                                          width: 30,
                                          child: Image.asset(
                                              "assets/money_send.png")),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  BankWithdraw()));
                                    },
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              Column(
                                children: [
                                  const Text("History"),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  InkWell(
                                    child: Container(
                                      child: SizedBox(
                                          height: 30,
                                          width: 30,
                                          child: Image.asset(
                                              "assets/receipt.png")),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  HistoryPage()));
                                    },
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            default:
              return Center(
                  child: Text(
                      "nothing worked FAILED!!! to connect to the Ganache"));
          }
        },
      ),
    );
  }
}
