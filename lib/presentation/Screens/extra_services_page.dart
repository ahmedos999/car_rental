import 'package:car_rental/presentation/components/car_page_components.dart';
import 'package:car_rental/presentation/components/extra_services_componts.dart';
import 'package:flutter/material.dart';

class ExtraServices extends StatelessWidget {
  const ExtraServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, 'Toyota C-HR'),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Extra services",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontSize: 32),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "You can choose extra sevices based on your needs and use them during your trip",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontSize: 16, color: Colors.black54),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height / 1.7,
                child: GridView.count(
                  childAspectRatio: 1.4,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: [
                    services(Icons.car_crash, 'Protections', '\$ 35.00'),
                    services(
                        Icons.ac_unit_rounded, 'Winter Equipment', '\$ 46.00'),
                    services(Icons.gps_fixed_outlined, 'GPS navigations',
                        '\$ 10.00'),
                    services(
                        Icons.gas_meter_rounded, 'Tank Filling', '\$ 23.00'),
                    services(Icons.child_friendly, 'Child seat', '\$ 12.00'),
                  ],
                ))
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.06,
          child: Container(
            decoration: BoxDecoration(
                color: const Color(0xffff6e49),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: const Offset(0, 0), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(5)),
            width: MediaQuery.sizeOf(context).width / 1.5,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Continue',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 20),
                ),
                Icon(
                  Icons.arrow_forward_outlined,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
