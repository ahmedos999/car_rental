import 'package:car_rental/presentation/components/history_page_components.dart';
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
                historycard(
                    context,
                    'Maserati Convertibale',
                    'cabriotlet',
                    'Oct 29, 2022',
                    'Active',
                    Colors.green,
                    'assets/imgs/car1.png'),
                historycard(
                    context,
                    'Jeep Cherokee',
                    'cabriotlet',
                    'Oct 18, 2022',
                    'Canceled',
                    const Color(0xffff6e49),
                    'assets/imgs/car6.png'),
                historycard(context, 'Mini Cooper', 'cabriotlet', 'Sep 7, 2022',
                    'Ended', Colors.black, 'assets/imgs/car3.png'),
                historycard(context, 'Mazda Cx-5', 'cabriotlet', 'Oct 29, 2022',
                    'Active', Colors.green, 'assets/imgs/car4.png'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
