import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/color.dart';

class Market extends StatelessWidget {
  const Market({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      ListView(children: [
        _header(),
        _secondLayout(),
        _thirdLayer(),
        _fiveLayer(),
        _sixlayer(),
      ])
    ]));
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
          'Markets',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: kdarkBlue,
          ),
        ),
      ),
      trailing: const Icon(
        Icons.notifications,
        color: kdarkBlue,
      ),
    ),
  );
}

_secondLayout() {
  return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        color: Colors.transparent,
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            _innerCard('assets/img3.png'),
            _innerCard('assets/img4.png')
          ],
        ),
      ));
}

_innerCard(String path) {
  return Container(
      width: 250,
      height: 200,
      decoration: BoxDecoration(
          color: Colors.transparent, borderRadius: BorderRadius.circular(20)),
      child: Image.asset(path, fit: BoxFit.fill));
}

_thirdLayer() {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: Container(
      height: 50,
      decoration: BoxDecoration(),
      child: Stack(
        children: [
          TextField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search, size: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Search ')),
          const Positioned(
              right: 15, top: 10, child: Icon(Icons.filter, color: kdarkBlue))
        ],
      ),
    ),
  );
}

_fiveLayer() {
  return const Padding(
      padding: EdgeInsets.all(8),
      child: Text('Market Movers',
          style: TextStyle(
            color: kdarkBlue,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          )));
}

_sixlayer() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(
      height: 400,
      child: ListView(children: [
        innerContainerSix(
            const Icon(Icons.facebook, color: kdarkBlue),
            'NVDA',
            'Nvidia',
            '25.94',
            Row(
              children: const [
                Icon(Icons.arrow_upward, size: 10, color: kgreen),
                Text('0.14%', style: TextStyle(fontSize: 10,color:kgreen))
              ],
            ),
            '227.26',
            '10',
            kgreen),
        innerContainerSix(
            Icon(Icons.facebook, color: kdarkBlue),
            'NVDA',
            'Nvidia',
            '25.94',
            Row(
              children: const [
                Icon(Icons.arrow_upward, size: 10, color: kgreen),
                Text('0.14%', style: TextStyle(fontSize: 10,color:kgreen))
              ],
            ),
            '227.26',
            '10',
            kgreen),
        innerContainerSix(
            const Icon(Icons.facebook, color: kdarkBlue),
            'NVDA',
            'Nvidia',
            '25.94',
            Row(
              children: const [
                Icon(Icons.arrow_upward, size: 10, color: Colors.red),
                Text('0.14%', style: TextStyle(fontSize: 10, color: Colors.red))
              ],
            ),
            '227.26',
            '10',
            Colors.red)
      ]),
    ),
  );
}

innerContainerSix(Icon icon, String title, String subtitle, String rate,
    Widget w1, String price, String people, Color gcolor) {
  return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              icon,
              const SizedBox(width: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: kdarkBlue,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      color: kdarkBlue,
                      fontSize: 12,
                    ),
                  ),
                ]),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              Text(
                rate,
                style: TextStyle(
                  color: gcolor,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              w1
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              Text(
                '\$$price',
                style: const TextStyle(
                  color: kdarkBlue,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                '${people}shares',
                style: const TextStyle(
                  color: kdarkBlue,
                  fontSize: 12,
                ),
              ),
            ]),
          )
        ]),
      ));
}
