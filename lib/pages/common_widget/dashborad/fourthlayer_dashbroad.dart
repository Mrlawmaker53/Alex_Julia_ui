import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../utils/color.dart';

fourthlayer(Icon icon, String title, String subtitle, Icon rateIcon,
    double sharecount, double sharecountpre, double people, double shareprice) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Container(
      width: 200,
      height: 70,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withOpacity(0.2)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: klightgrey,
                  child: icon,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title),
                      Text(subtitle),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${sharecount}', style: const TextStyle(fontSize: 14)),
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    rateIcon,
                    Text(
                      '${sharecountpre.toString()}%',
                      style: const TextStyle(color: Colors.green, fontSize: 10),
                    ),
                  ]),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('\$ ${people.toStringAsFixed(2).toString()}',
                      style: const TextStyle(
                        color: kdarkBlue,
                      )),
                  Text('${shareprice.toString()}shares',
                      style: TextStyle(fontSize: 12, color: klightgrey)),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
