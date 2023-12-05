import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Account',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontSize: 30, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Log in the rent a car and enjoy your journey',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontSize: 14, color: Colors.black45),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            child: Center(
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffff6e49),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height / 6,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.lock,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Privacy Policy',
                    style: TextStyle(color: Colors.black54, fontSize: 16),
                  )
                ],
              ),
              Icon(Icons.arrow_forward_ios_outlined)
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 1,
            width: MediaQuery.of(context).size.width * 0.9,
            color: Colors.black26,
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.content_paste_rounded,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Terms of services',
                    style: TextStyle(color: Colors.black54, fontSize: 16),
                  )
                ],
              ),
              Icon(Icons.arrow_forward_ios_outlined)
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 1,
            width: MediaQuery.of(context).size.width * 0.9,
            color: Colors.black26,
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.help_outline_outlined,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Help Center',
                    style: TextStyle(color: Colors.black54, fontSize: 16),
                  )
                ],
              ),
              Icon(Icons.arrow_forward_ios_outlined)
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 1,
            width: MediaQuery.of(context).size.width * 0.9,
            color: Colors.black26,
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    ));
  }
}
