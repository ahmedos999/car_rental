import 'package:flutter/material.dart';

Widget historycard(BuildContext context, String name, String brand, String date,
    String status, Color color, String img) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontSize: 20),
            ),
            Text(
              brand,
              style: const TextStyle(fontSize: 14, color: Colors.black54),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'order date: ',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(fontSize: 18, color: Colors.black45),
                        ),
                        Text(
                          date,
                          style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black87,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Status: ',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(fontSize: 18, color: Colors.black45),
                        ),
                        Text(
                          status,
                          style: TextStyle(
                              fontSize: 14,
                              color: color,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width / 3,
                  // height: MediaQuery.sizeOf(context).width / 3,
                  child: Image.asset(img),
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
}
