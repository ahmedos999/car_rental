import 'package:flutter/material.dart';

Widget rowdata(BuildContext context, String title, String tail) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 30),
      ),
      Text(
        tail,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Theme.of(context).colorScheme.secondary, fontSize: 16),
      )
    ],
  );
}
