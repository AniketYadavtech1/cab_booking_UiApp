import 'package:capbooking_app/page/travellwith_auto.dart';
import 'package:capbooking_app/page/travell_withride.dart';
import 'package:capbooking_app/reuse/Customtextfield.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> suggestionsicon = [
    "assets/image/trip.jpeg",
    "assets/image/auto.png",
    "assets/image/moto.jpeg",
    "assets/image/package.jpeg",
  ];
  List<String> suaveEverday = [
    "assets/image/autopage.jpg",
    "assets/image/ubermoto.jpeg",
    "assets/image/car.jpg",
  ];
  List<String> saveEverdaytext = [
    'Auto rides->',
    'Moto trips->',
    'Shuttle rides->',
  ];

  List<String> suggestionsIconText = [
    'Trip',
    'Uber Auto',
    'Moto',
    'Package',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cab Booking App',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.grey),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField(),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  const Text(
                    'Suggestions',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: const Text(
                      'See all',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 150,
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 5,
                  crossAxisCount: 1,
                  childAspectRatio: 1.2,
                ),
                itemCount: suggestionsicon.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: const Offset(0, 3))
                        ]),
                    padding: const EdgeInsets.only(top: 9),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          suggestionsicon[index],
                          fit: BoxFit.cover,
                          height: 50,
                          width: 60,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          suggestionsIconText[index],
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Container(
                margin: const EdgeInsets.only(left: 20),
                child: const Text(
                  'Commute smarter',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.grey),
                )),
            const SizedBox(height: 10),
            SizedBox(
              height: 275,
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 10,
                  crossAxisCount: 1,
                  childAspectRatio: 1,
                ),
                itemCount: suaveEverday.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      _navigateToPage(context, index);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: const Offset(0, 3))
                          ]),
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              suaveEverday[index],
                              fit: BoxFit.cover,
                              height: MediaQuery.sizeOf(context).height / 4,
                              width: MediaQuery.sizeOf(context).width,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            margin: const EdgeInsets.only(right: 107),
                            child: Text(
                              saveEverdaytext[index],
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _navigateToPage(BuildContext context, int index) {
  switch (index) {
    case 0:
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => TravellwithAuto()));
      break;
    case 1:
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => TravellWithride()));
      break;

    default:
      print('Invalid selection');
  }
}
