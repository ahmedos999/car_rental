import 'package:flutter/material.dart';

class CarPage extends StatelessWidget {
  const CarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.arrow_back_ios,
            size: 26,
            color: Color(0xffff6e49),
          ),
          title: const Text(
            'Toyota C-HR',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
        ),
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
                    children: [
                      Icon(
                        Icons.star,
                        color: Color(0xffff6e49),
                      ),
                      Text('4.5')
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
                    .copyWith(fontSize: 18, color: Colors.black54),
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
                      color: Color.fromARGB(159, 255, 190, 173),
                      spreadRadius: 1,
                      blurRadius: 15,
                      offset: Offset(5, 5),
                    ),
                    BoxShadow(
                        color: Color.fromARGB(159, 236, 193, 183),
                        offset: Offset(-10, -10),
                        blurRadius: 40,
                        spreadRadius: 10),
                  ],
                ),
                child: Image.asset('assets/imgs/car1.png'),
              )
            ],
          ),
        )),
      ),
    );
  }
}
