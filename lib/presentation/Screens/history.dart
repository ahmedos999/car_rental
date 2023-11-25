import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'History',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontSize: 36),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 234, 234, 234),
                      ),
                      width: MediaQuery.sizeOf(context).width * 0.8,
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Find your favoraite car',
                            prefixIcon: Icon(
                              Icons.search,
                              size: 30,
                            )),
                      ),
                    ),
                    const Icon(
                      Icons.settings,
                      size: 30,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Maserati Convertibale',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(fontSize: 20),
                        ),
                        const Text(
                          'cabriotlet',
                          style: TextStyle(fontSize: 14, color: Colors.black54),
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
                                          .copyWith(
                                              fontSize: 18,
                                              color: Colors.black45),
                                    ),
                                    const Text(
                                      'Oct 29, 2022',
                                      style: TextStyle(
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
                                          .copyWith(
                                              fontSize: 18,
                                              color: Colors.black45),
                                    ),
                                    Text(
                                      'Active',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.green[400],
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              width: MediaQuery.sizeOf(context).width / 3,
                              // height: MediaQuery.sizeOf(context).width / 3,
                              child: Image.asset('assets/imgs/car1.png'),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
