import 'package:alex_julica_ui/pages/dasborad/controller/scoketmarketcontroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../../utils/color.dart';

var selectedDate = '1W';

class StockDetails extends StatelessWidget {
  StockDetails({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
  }) : super(key: key);
  final Icon icon;

  SocketMarketController controller = Get.put(SocketMarketController());
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        ListView(
          children: [
            _header(),
            _secondLayerSocketPage(icon, title, subtitle),
            _thirdLayer(),
            _fourthLayer(),
            _fiveLayer(icon),
            _sixLayer(),
          ],
        )
      ],
    ));
  }
}

_header() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ListTile(
      leading: InkWell(
        onTap: () {
          Get.back();
        },
        child: const Icon(
          Icons.arrow_back_ios,
          color: kdarkBlue,
        ),
      ),
      title: const Center(
        child: Text(
          'Stock Details',
          style: TextStyle(
            color: kdarkBlue,
          ),
        ),
      ),
      trailing: const Icon(
        Icons.upload_outlined,
        color: kdarkBlue,
      ),
    ),
  );
}

_secondLayerSocketPage(
  Icon icon,
  String title,
  String subtitle,
) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                CircleAvatar(backgroundColor: klightgrey, child: icon),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8.0,
                      ),
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: kdarkBlue,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        subtitle,
                        style: TextStyle(
                          color: klightgrey,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              '\$909.68',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: kdarkBlue,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: const [
                Icon(Icons.arrow_upward, color: kgreen, size: 10),
                Text(
                  '19.45%(1.75)',
                  style: TextStyle(
                    fontSize: 12,
                    color: kgreen,
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    ),
  );
}

_thirdLayer() {
  return SizedBox(
    height: 70,
    child: Stack(
      children: [
        Positioned(
          top: 20,
          left: 20,
          right: 15,
          child: SizedBox(
              height: 40,
              child: GetBuilder<SocketMarketController>(builder: (controller) {
                return ListView(scrollDirection: Axis.horizontal, children: [
                  getData('1D'),
                  const SizedBox(width: 15),
                  getData('1W'),
                  const SizedBox(width: 15),
                  getData('1M'),
                  const SizedBox(width: 15),
                  getData('1Y'),
                  const SizedBox(width: 15),
                  getData('ALL')
                ]);
              })),
        ),
      ],
    ),
  );
}

getData(String day) {
  return AnimatedContainer(
    duration: const Duration(milliseconds: 500),
    curve: Curves.easeIn,
    decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withOpacity(0.2)),
        borderRadius: BorderRadius.circular(10),
        color: switchColor(day)),
    width: 60,
    height: 40,
    child: InkWell(
        onTap: () {
          fSelectedDate(day);
        },
        child: Center(
          child: Text(
            day,
            style: TextStyle(
              color: switchTextColor(day),
            ),
          ),
        )),
  );
}

_fourthLayer() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Image.asset('assets/img2.png',
        width: 200, height: 250, fit: BoxFit.fill),
  );
}

_fiveLayer(icon) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 150,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.withOpacity(0.3)),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          ListTile(
            leading: SizedBox(
              width: 20,
              height: 30,
              child: icon,
            ),
            title: const Text(
              'Overview',
              style: TextStyle(
                fontSize: 20,
                color: kdarkBlue,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: const Icon(Icons.question_mark_outlined,
                color: kdarkBlue, size: 15),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('open',
                          style: TextStyle(
                            fontSize: 18,
                            color: klightgrey,
                          )),
                      const SizedBox(height: 5),
                      const Text('\$909.68',
                          style: TextStyle(
                            color: kdarkBlue,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Day low',
                          style: TextStyle(
                            fontSize: 18,
                            color: klightgrey,
                          )),
                      const SizedBox(height: 5),
                      const Text('\$902.11',
                          style: TextStyle(
                            color: kdarkBlue,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Day night',
                          style: TextStyle(
                            color: klightgrey,
                            fontSize: 18,
                          )),
                      const SizedBox(height: 5),
                      const Text('\$910.18',
                          style: TextStyle(
                            color: kdarkBlue,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}

_sixLayer() {
  return Padding(
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20), color: kgreen),
                  child: const Center(
                    child: Text(
                      'Buy',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  )),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
                height: 60,
                decoration: BoxDecoration(
                    color: kdarkBlue, borderRadius: BorderRadius.circular(20)),
                child: const Center(
                  child: Text(
                    'Follow',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                )),
          )
        ],
      ));
}

Color switchColor(day) {
  if (day == selectedDate) {
    return kgreen;
  } else {
    return Colors.white;
  }
}

fSelectedDate(String Day) {
  selectedDate = Day;
}

Color switchTextColor(day) {
  if (day == selectedDate) {
    return Colors.white;
  } else {
    return Colors.grey;
  }
}
