import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/color.dart';
import '../../dasborad/view/socketdetail.dart';

buildCard(Icon icon, String title, String subtitle, Icon rateIcon,
      double rate, double sharecount, double shareprice) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: InkWell(
        onTap: () {
          Get.to(StockDetails(
            icon: icon,
            title: title,
            subtitle: subtitle,
          ));
        },
        child: Stack(
          children: [
            Container(
              width: 230.0,
              height: 150.0,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.withOpacity(0.2)),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: CircleAvatar(
                            backgroundColor: klightgrey,
                            child: icon,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(title),
                              Text(subtitle),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            children: [
                              rateIcon,
                              Text(
                                '${rate.toString()}%',
                                style: const TextStyle(
                                    color: kgreen, fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      Column(children: [
                        Text(
                          '${sharecount.toStringAsFixed(2)}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kdarkBlue,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          '\$${shareprice.toStringAsFixed(2).toString()}',
                          style: TextStyle(
                            fontSize: 12,
                            color: klightgrey,
                          ),
                        )
                      ]),
                      Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Image.asset('assets/img.png',
                              width: 100, height: 40, fit: BoxFit.cover))
                    ]),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
