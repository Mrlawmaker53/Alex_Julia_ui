import 'package:flutter/material.dart';

import '../../../utils/color.dart';
import '../../common_widget/dashborad/floating_wiedget.dart';
import '../../common_widget/dashborad/fourthlayer_dashbroad.dart';
import '../../common_widget/dashborad/second_dashborad.dart';
import '../../common_widget/dashborad/thirdlayer_dashborad.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                ListTile(
                  leading: const Icon(Icons.circle_notifications),
                  title: const Text(
                    'Alex Julica',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kdarkBlue,
                      fontSize: 20,
                    ),
                  ),
                  trailing: SizedBox(
                    width: 70,
                    child: Row(children: const [
                      Icon(
                        Icons.search,
                        color: kdarkBlue,
                      ),
                      SizedBox(width: 20),
                      Icon(
                        Icons.notifications,
                        color: kdarkBlue,
                      ),
                    ]),
                  ),
                ),
                secondLayer(),
                const SizedBox(
                  height: 20,
                ),
                const ListTile(
                  leading: Text(
                    'Watchlist',
                    style: TextStyle(
                        color: kdarkBlue,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  trailing: Text(
                    'Sell All',
                    style: TextStyle(
                      color: kgreen,
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15.0,
                  ),
                  child: SizedBox(
                    height: 180,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        buildCard(
                            const Icon(Icons.abc, size: 20),
                            'ADB',
                            'Andobe Inc',
                            const Icon(Icons.arrow_upward,
                                color: kgreen, size: 16),
                            5.49,
                            33.56,
                            645.26),
                        buildCard(
                            const Icon(Icons.abc),
                            'TSLA',
                            'Tesla',
                            const Icon(Icons.arrow_downward,
                                color: kgreen, size: 14),
                            5.49,
                            33.49,
                            645.26),
                      ],
                    ),
                  ),
                ),
                const ListTile(
                  leading: Text(
                    'Stocks Activity',
                    style: TextStyle(
                        color: kdarkBlue,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
                fourthlayer(
                    Icon(Icons.abc, size: 20),
                    'NVDA',
                    'Nvidia',
                    const Icon(Icons.arrow_upward, color: kgreen, size: 10),
                    25.49,
                    0.34,
                    277.26,
                    10),
              ],
            ),
            floatingwieght(),
          ],
        ),
      ),
    );
  }
}
