import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/color.dart';

floatingwieght() {
  return Positioned(
    top: 80,
    right: 15,
    child: Container(
      decoration: const BoxDecoration(),
      height: 230,
      child: Positioned(
        right: 15,
        top: 80,
        bottom: 0,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                color: Colors.white,
                boxShadow: const [BoxShadow(blurRadius: 2)],
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey.withOpacity(0.4),
                    child: const Center(
                      child: Icon(Icons.apple, color: kdarkBlue),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey.withOpacity(0.4),
                    child: const Center(
                      child: Icon(Icons.paypal, color: kdarkBlue),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey.withOpacity(0.4),
                    child: const Center(
                      child: Icon(Icons.paypal, color: kdarkBlue),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: Center(
                    child: Icon(Icons.arrow_drop_down, color: kdarkBlue),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
