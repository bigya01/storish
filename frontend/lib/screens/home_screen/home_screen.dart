import 'package:flutter/material.dart';
import 'package:storish/utils/constant.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  static String routeName = "/home";

  Widget singalProducts(String text, String image, String money) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 300,
      width: 200,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 202, 199, 183),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(
          flex: 2,
          child: Image.asset(
            image,
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Text(
                text,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              Text(
                money,
                style: const TextStyle(color: Color.fromARGB(255, 51, 16, 16)),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: kSecondaryColor,
                ),
                child: Row(
                  children: const [
                     Text(
                      'Buy Now',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                     Icon(
                      Icons.shopping_cart,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAE0DA),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
        actions: const [
          CircleAvatar(
            radius: 12,
            backgroundColor: Color.fromARGB(255, 163, 208, 218),
            child: Icon(Icons.search, size: 17, color: Colors.black),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              radius: 12,
              backgroundColor: Color.fromARGB(255, 163, 208, 218),
              child: Icon(Icons.shop, size: 17, color: Colors.black),
            ),
          )
        ],
        backgroundColor: kPrimaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://hips.hearstapps.com/hmg-prod/images/healthy-groceries-1525213305.jpg?crop=1.00xw:0.728xh;0,0.173xh&resize=640:*')),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Grocery Items',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(
                        color: Color.fromARGB(255, 73, 68, 68),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    singalProducts(
                        'chocolate', 'assets/images/chocolate.png', 'Rs.80'),
                    singalProducts(
                        'vegetable oil', 'assets/images/oil.png', 'Rs.260'),
                    singalProducts('tea', 'assets/images/tea.png', 'Rs.180'),
                  ],
                ),
              ),
              const Text(
                'Past Transactions',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const PastTransactions(),
              const Text(
                'We Recommend You',
                style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              const Text('apple'),
              const Text('sweets'),
              const Text('wine'),
            ],
          ),
        ),
      ),
    );
  }
}

class PastTransactions extends StatelessWidget {
  const PastTransactions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(color: Colors.black, width: 2.5),
      children: const [
        TableRow(children: [
          Text(
            "purchased",
            style: TextStyle(fontSize: 15.0),
          ),
          Text(
            "price(Rs)",
            style: TextStyle(fontSize: 15.0),
          ),
          Text(
            "Category",
            style: TextStyle(fontSize: 15.0),
          ),
        ]),
        TableRow(children: [
          Text(
            "Chocolate",
            style: TextStyle(fontSize: 15.0),
          ),
          Text(
            "Rs.80",
            style: TextStyle(fontSize: 15.0),
          ),
          Text(
            "Luxury",
            style: TextStyle(fontSize: 15.0),
          ),
        ]),
        TableRow(children: [
          Text(
            "Tea",
            style: TextStyle(fontSize: 15.0),
          ),
          Text(
            "Rs.180",
            style: TextStyle(fontSize: 15.0),
          ),
          Text(
            "Basic",
            style: TextStyle(fontSize: 15.0),
          ),
        ]),
        TableRow(
          children: [
            Text(
              "Vegetable oil",
              style: TextStyle(fontSize: 15.0),
            ),
            Text(
              "Rs.260",
              style: TextStyle(fontSize: 15.0),
            ),
            Text(
              "Basic",
              style: TextStyle(fontSize: 15.0),
            ),
          ],
        ),
      ],
    );
  }
}
