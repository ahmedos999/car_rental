import 'package:car_rental/presentation/components/car_page_components.dart';
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
          children: [
            Text(
              "Extra services",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontSize: 28),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "You can choose extra sevices based on your needs and use them during your trip",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontSize: 18, color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
