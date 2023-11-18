import 'package:car_rental/data/models/car.dart';
import 'package:car_rental/presentation/components/home_page_components.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  // carShow(context, 'assets/imgs/car2.png', '4.5', 'Mercedes Benz',
  //     'Sedan', '\$150', '4', 'Automatic', '\$129')
  List<car> discontedCars = [
    car(
        id: 1,
        img: 'assets/imgs/car2.png',
        rating: '4.5',
        name: 'Mercedes Benz',
        brand: 'Sedan',
        disconted: '\$150',
        seats: '4',
        gear: 'Automatic',
        price: '\$129'),
    car(
        id: 2,
        img: 'assets/imgs/car1.png',
        rating: '3.5',
        name: 'Challanger',
        brand: 'Dodge',
        disconted: '\$160',
        seats: '2',
        gear: 'Automatic',
        price: '\$130'),
    car(
        id: 3,
        img: 'assets/imgs/car3.png',
        rating: '4.1',
        name: 'Corailla',
        brand: 'Toyota',
        disconted: '\$110',
        seats: '4',
        gear: 'Automatic',
        price: '\$101'),
    car(
        id: 4,
        img: 'assets/imgs/car6.png',
        rating: '4.4',
        name: 'H2',
        brand: 'Hammer',
        disconted: '\$250',
        seats: '6',
        gear: 'Automatic',
        price: '\$229'),
  ];
  String dropdownvalue = 'Item 1';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Enjoy the ride in the',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.grey, fontSize: 16),
              ),
              Text(
                'Car you Like.',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: 36),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 201, 201, 201))),
                        enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 201, 201, 201))),
                        prefixIcon: Icon(
                          Icons.location_on,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                      value: dropdownvalue,
                      isExpanded: true,
                      items: items
                          .map((String e) =>
                              DropdownMenuItem(value: e, child: Text(e)))
                          .toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              rowdata(context, 'Best Offers', 'view all'),
              const SizedBox(
                height: 20,
              ),
              // carShow(context, 'assets/imgs/car2.png', '4.5', 'Mercedes Benz',
              //     'Sedan', '\$150', '4', 'Automatic', '\$129')
              SizedBox(
                height: MediaQuery.sizeOf(context).height / 2.5,
                width: MediaQuery.sizeOf(context).width,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: discontedCars.length,
                    itemBuilder: (context, index) {
                      return carShow(
                          context,
                          discontedCars[index].img,
                          discontedCars[index].rating,
                          discontedCars[index].name,
                          discontedCars[index].brand,
                          discontedCars[index].disconted,
                          discontedCars[index].seats,
                          discontedCars[index].gear,
                          discontedCars[index].price);
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
