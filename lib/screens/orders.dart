import 'package:flutter/material.dart';
import 'package:ui/config/palette.dart';

class Orders extends StatelessWidget {
  const Orders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Column(
          children: [
            Row(
              children: [
                const Expanded(
                  child: Text(
                    'Orders',
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
                OutlinedButton(onPressed: () {}, child: const Text('Export')),
                const SizedBox(width: 10.0),
                OutlinedButton(onPressed: () {}, child: const Text('Print')),
                const SizedBox(width: 10.0),
                MaterialButton(
                  color: Palette.facebookBlue,
                  onPressed: () {},
                  child: const Text('Create Order'),
                )
              ],
            ),
            const SizedBox(height: 10.0),
            Container(
              padding: const EdgeInsets.all(8.0),
              height: 60.0,
              color: Colors.black12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 500.0,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: const TextField(
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                  const SizedBox(width: 200.0),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                              onPressed: () {}, child: const Text('Export')),
                        ),
                        const SizedBox(width: 10.0),
                        Expanded(
                          child: OutlinedButton(
                              onPressed: () {}, child: const Text('Export')),
                        ),
                        const SizedBox(width: 10.0),
                        Expanded(
                          child: OutlinedButton(
                              onPressed: () {}, child: const Text('Export')),
                        ),
                        const SizedBox(width: 10.0),
                        Expanded(
                          child: OutlinedButton(
                              onPressed: () {}, child: const Text('Export')),
                        ),
                        const SizedBox(width: 10.0),
                        Expanded(
                          child: OutlinedButton(
                              onPressed: () {}, child: const Text('Export')),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
