// import 'package:expensemanagerdapp/view/bloc/dashboard_bloc.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_svg_provider/flutter_svg_provider.dart';
// import 'package:google_fonts/google_fonts.dart';

// class HistoryPage extends StatefulWidget {
//   const HistoryPage({super.key});

//   @override
//   State<HistoryPage> createState() => _HistoryPageState();
// }

// class _HistoryPageState extends State<HistoryPage> {
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<DashboardBloc, DashboardState>(
//       // builder: (context, state) {
//       //   // TODO: implement listener
//       // },
//       builder: (context, state) {
//         final successState = state as DashboardSuccessState;
//         return Scaffold(
//           appBar: AppBar(
//             title: const Text("Transactions"),
//           ),
//           body: Container(
//             margin:
//                 const EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 10),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "Your Transactions :",
//                   style: TextStyle(
//                     fontFamily: GoogleFonts.spaceMono().fontFamily,
//                     fontSize: 18,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 Expanded(
//                   child: ListView.builder(
//                     itemCount: successState.transactions.length,
//                     itemBuilder: (context, index) {
//                       return Container(
//                         padding:
//                             EdgeInsets.symmetric(vertical: 12, horizontal: 12),
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(18),
//                             color: Colors.grey.shade300),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Row(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 SizedBox(
//                                   height: 24,
//                                   width: 24,
//                                   child: Image(
//                                     image: Svg("assets/ethlogo.svg"),
//                                   ),
//                                 ),
//                                 const SizedBox(
//                                   width: 6,
//                                 ),
//                                 Text("1 ETH")
//                               ],
//                             ),
//                             Text("0x25FfA29EF24aebA02C6c4411D8D18c4a8A342385"),
//                             Text("Online Purchase"),
//                           ],
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

import 'package:expensemanagerdapp/view/bloc/dashboard_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        final successState = state as DashboardSuccessState;
        return Scaffold(
          appBar: AppBar(
            title: const Text("Transactions"),
          ),
          body: Container(
            margin:
                const EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Your Transactions :",
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: successState.transactions.length,
                    itemBuilder: (context, index) {
                      return Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: Colors.grey.shade300),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 24,
                                  width: 24,
                                  child: Image(
                                    image: Svg("assets/ethlogo.svg"),
                                  ),
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                Text("1 ETH")
                              ],
                            ),
                            Text("0x25FfA29EF24aebA02C6c4411D8D18c4a8A342385"),
                            Text("Online Purchase"),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
