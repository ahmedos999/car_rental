import 'package:flutter/material.dart';

Widget infocard(
    BuildContext context, IconData icon, String metric, String measure) {
  return Container(
    width: MediaQuery.sizeOf(context).width / 2.5,
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 1,
          blurRadius: 3,
          offset: const Offset(0, 0), // changes position of shadow
        ),
      ],
      borderRadius: BorderRadius.circular(10),
      // border: Border.all(color: Colors.black38),
    ),
    child: Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            icon,
            size: 40,
            color: Theme.of(context).colorScheme.secondary,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
              width: 2,
              height: 35,
              color: Colors.black26,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                metric,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: 18, color: Colors.black38),
              ),
              Text(
                measure,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontSize: 15, fontWeight: FontWeight.w700),
              )
            ],
          )
        ],
      ),
    ),
  );
}
