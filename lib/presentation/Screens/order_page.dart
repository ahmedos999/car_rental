import 'package:car_rental/presentation/components/car_page_components.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, 'Review Your Order'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Mazda Cx-5',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontSize: 26),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Crossover',
              style: TextStyle(color: Colors.black45, fontSize: 16),
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //outer
              children: [
                Row(
                  //inner
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.person,
                          color: Color(0xffff6e49),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('4')
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.g_mobiledata,
                          color: Color(0xffff6e49),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Automatic',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Color(0xffff6e49),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text('4.5')
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(300),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(159, 213, 213, 213),
                        spreadRadius: 1,
                        blurRadius: 15,
                        offset: Offset(5, 5),
                      ),
                      BoxShadow(
                          color: Color.fromARGB(159, 214, 214, 214),
                          offset: Offset(-10, -10),
                          blurRadius: 100,
                          spreadRadius: 10),
                    ],
                  ),
                  width: MediaQuery.sizeOf(context).width / 1.5,
                  height: MediaQuery.sizeOf(context).height / 5,
                  child: Image.asset('assets/imgs/car1.png'),
                ),
                const Row(
                  children: [
                    Text(
                      '\$103',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      '/Day',
                      style: TextStyle(color: Colors.black38, fontSize: 16),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Rent Info',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontSize: 24),
            ),
            const Row(
              children: [
                Icon(
                  Icons.date_range,
                  color: Colors.black45,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    'Rental Duration:',
                    style: TextStyle(color: Colors.black45, fontSize: 16),
                  ),
                ),
                Text(
                  '8 Days',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.green,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Pickup Location',
                        style: TextStyle(color: Colors.black45, fontSize: 16),
                      ),
                      Text(
                        'Los Angeles,2201 S Beverly Glen Blvd',
                        style: TextStyle(color: Colors.black87, fontSize: 14),
                      ),
                      Text(
                        'Oct 06,2022 - 09:00AM',
                        style: TextStyle(color: Colors.black54, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                children: List.generate(
                    10,
                    (index) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 1.5),
                          child: Container(
                            color: index % 2 == 0
                                ? Colors.transparent
                                : Colors.grey,
                            height: 3,
                            width: 3,
                          ),
                        )),
              ),
            ),
            const Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.red,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Return Location',
                        style: TextStyle(color: Colors.black45, fontSize: 16),
                      ),
                      Text(
                        'Los Angeles,2201 S Beverly Glen Blvd',
                        style: TextStyle(color: Colors.black87, fontSize: 14),
                      ),
                      Text(
                        'Oct 14,2022 - 09:00AM',
                        style: TextStyle(color: Colors.black54, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
