
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../utils/color.dart';
import '../../dasborad/view/dasborad.dart';


secondLayer() {
  return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.withOpacity(0.2),
          ),
          color: kdarkBlue,
          borderRadius: BorderRadius.circular(20),
        ),
        child: innerconatiner(),
      ));
}




innerconatiner() {
  return Stack(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 12.0, top: 16, bottom: 8),
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Porfolio value',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            )),
        Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            textBaseline: TextBaseline.ideographic,
            children: [
              Text(
                '\$${oCcy.format(15136.32)}',
                style: const TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                '2.11%',
                style: TextStyle(
                  color: kgreen,
                ),
              ),
              const Icon(Icons.arrow_upward, color: Colors.green, size: 14)
            ]),
        const SizedBox(
          height: 30,
        ),
        Row(
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                    color: kgreen, borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text(
                    'Deposit',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            InkWell(
              onTap: () {},
              child: Container(
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                    border: Border.all(color: kgreen),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text(
                    'Withdraw',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        )
      ],
        ),
      ),
    ],
  );
}

