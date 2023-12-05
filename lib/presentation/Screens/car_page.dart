import 'package:car_rental/presentation/Screens/extra_services_page.dart';
import 'package:car_rental/presentation/components/car_page_components.dart';
import 'package:car_rental/presentation/components/home_page_components.dart';
import 'package:flutter/material.dart';

class CarPage extends StatelessWidget {
  const CarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar(context, 'Toyota C-HR'),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: Color(0xffff6e49),
                        size: 20,
                      ),
                      Text(
                        '4.5',
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  ),
                  Icon(Icons.favorite_border_sharp)
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Toyota C-HR',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: 28),
              ),
              Text(
                'Sports car',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontSize: 16, color: Colors.black54),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: MediaQuery.sizeOf(context).width / 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(300),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(159, 255, 203, 190),
                      spreadRadius: 1,
                      blurRadius: 15,
                      offset: Offset(5, 5),
                    ),
                    BoxShadow(
                        color: Color.fromARGB(159, 254, 213, 204),
                        offset: Offset(-10, -10),
                        blurRadius: 40,
                        spreadRadius: 10),
                  ],
                ),
                child: Image.asset('assets/imgs/car1.png'),
              ),
              const SizedBox(
                height: 20,
              ),
              rowdata(context, 'Car information', 'More'),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height / 2,
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 3,
                  crossAxisSpacing: 6.0,
                  mainAxisSpacing: 12.0,
                  children: [
                    infocard(context, Icons.local_gas_station_outlined,
                        'Tank Size', '50 Liters'),
                    infocard(context, Icons.g_mobiledata_rounded, 'Gear Box',
                        'Automatic'),
                    infocard(context, Icons.people, 'Seats', '4'),
                    infocard(context, Icons.door_back_door, 'Doors', '2'),
                  ],
                ),
              )
            ],
          ),
        )),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.1,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '\$175',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            decoration: TextDecoration.lineThrough,
                            fontSize: 24,
                            color: const Color.fromARGB(255, 138, 138, 138)),
                      ),
                      Row(
                        children: [
                          Text(
                            '\$150/',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(fontSize: 28, color: Colors.black),
                          ),
                          const Text(
                            'day',
                            style: TextStyle(color: Colors.black45),
                          )
                        ],
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ExtraServices()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffff6e49),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: const Offset(
                                  0, 0), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(5)),
                      width: MediaQuery.sizeOf(context).width / 1.5,
                      height: MediaQuery.sizeOf(context).height * 0.06,
                      child: const Center(
                          child: Text(
                        'Rent now',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      )),
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
