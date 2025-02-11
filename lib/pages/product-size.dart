import 'package:flutter/material.dart';

class ProductSize extends StatelessWidget {
  const ProductSize({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 25,
          height: 25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(width: 1, color: Colors.grey)),
          child: const InkWell(child: Center(child: Text("S"))),
        ),
        const SizedBox(
          width: 3,
        ),
        Container(
          width: 25,
          height: 25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(width: 1, color: Colors.grey)),
          child: const InkWell(child: Center(child: Text("M"))),
        ),
        const SizedBox(
          width: 3,
        ),
        Container(
          width: 25,
          height: 25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(width: 1, color: Colors.grey)),
          child: const InkWell(child: Center(child: Text("L"))),
        ),
        const SizedBox(
          width: 3,
        ),
        Container(
          width: 25,
          height: 25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(width: 1, color: Colors.grey)),
          child: const InkWell(child: Center(child: Text("XL"))),
        ),
      ],
    );
  }
}
