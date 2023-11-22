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

Widget carShow(BuildContext context, String img, String rating, String name,
    String brand, String disconted, String seats, String gear, String price) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: MediaQuery.sizeOf(context).width * 0.8,
      // height: MediaQuery.sizeOf(context).height / 2.5,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 3,
          blurRadius: 5,
          offset: const Offset(0, 2), // changes position of shadow
        ),
      ], color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(159, 240, 240, 240),
                      spreadRadius: 1,
                      blurRadius: 15,
                      offset: Offset(5, 5),
                    ),
                    BoxShadow(
                        color: Colors.white,
                        offset: Offset(-5, -5),
                        blurRadius: 10,
                        spreadRadius: 1),
                  ],
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromARGB(70, 134, 134, 134),
                      Color.fromARGB(94, 160, 160, 160),
                      Color.fromARGB(119, 216, 216, 216),
                      Color.fromARGB(159, 242, 242, 242),
                    ],
                  ),
                ),
                // width: MediaQuery.sizeOf(context).width,
                // height: MediaQuery.sizeOf(context).height / 5,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                              Text(rating,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(fontSize: 14))
                            ],
                          ),
                          Icon(
                            Icons.favorite_border,
                            color: Theme.of(context).colorScheme.primary,
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 30,
                    ),
                    Expanded(child: Center(child: Image.asset(img)))
                  ],
                ),
              ),
            ),
            Text(
              name,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontSize: 22),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  brand,
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontSize: 16,
                      color: const Color.fromARGB(255, 138, 138, 138)),
                ),
                Row(
                  children: [
                    Text(
                      disconted,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          decoration: TextDecoration.lineThrough,
                          fontSize: 20,
                          color: const Color.fromARGB(255, 138, 138, 138)),
                    ),
                    const SizedBox(
                      width: 35,
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    Text(
                      seats,
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge!
                          .copyWith(fontSize: 16),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.g_mobiledata_rounded,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    Text(
                      gear,
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge!
                          .copyWith(fontSize: 16),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      price,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontSize: 22),
                    ),
                    Text(
                      '/ Day',
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 12,
                          color: const Color.fromARGB(255, 138, 138, 138)),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
}

Widget carShow2(BuildContext context, String img, String rating, String name,
    String brand, String seats, String gear, String price) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: MediaQuery.sizeOf(context).width * 0.8,
      // height: MediaQuery.sizeOf(context).height / 2.5,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 3,
          blurRadius: 5,
          offset: const Offset(0, 2), // changes position of shadow
        ),
      ], color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(159, 255, 155, 130),
                      spreadRadius: 1,
                      blurRadius: 15,
                      offset: Offset(5, 5),
                    ),
                    BoxShadow(
                        color: Colors.white,
                        offset: Offset(-3, -3),
                        blurRadius: 5,
                        spreadRadius: 1),
                  ],
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromARGB(71, 255, 132, 102),
                      Color.fromARGB(94, 255, 154, 129),
                      Color.fromARGB(119, 255, 183, 165),
                      Color.fromARGB(159, 255, 206, 193),
                    ],
                  ),
                ),
                // width: MediaQuery.sizeOf(context).width,
                // height: MediaQuery.sizeOf(context).height / 5,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                              Text(rating,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(fontSize: 14))
                            ],
                          ),
                          Icon(
                            Icons.favorite_border,
                            color: Theme.of(context).colorScheme.primary,
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 30,
                    ),
                    Expanded(child: Center(child: Image.asset(img)))
                  ],
                ),
              ),
            ),
            Text(
              name,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontSize: 22),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  brand,
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontSize: 16,
                      color: const Color.fromARGB(255, 138, 138, 138)),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    Text(
                      seats,
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge!
                          .copyWith(fontSize: 16),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.g_mobiledata_rounded,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    Text(
                      gear,
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge!
                          .copyWith(fontSize: 16),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      price,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontSize: 22),
                    ),
                    Text(
                      '/ Day',
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 12,
                          color: const Color.fromARGB(255, 138, 138, 138)),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
}
