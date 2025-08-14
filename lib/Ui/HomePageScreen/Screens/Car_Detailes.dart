import 'package:carshop/Models/Data_Car.dart';
import 'package:carshop/Ui/HomePageScreen/Screens/Add_Card.dart';

import 'package:flutter/material.dart';

import 'HomePageScreen.dart';

class CarDetails extends StatelessWidget {
  static const String routename = "CarDetails";
  CarDetails({super.key});
final Datacar datacar =Datacar();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf7f7fb),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, HomePageScreen.routename);
            },
            icon: const Icon(Icons.arrow_back_ios, color: Colors.black, size: 25),
          ),
        ),
        title: const Text(
          "Toyota Corolla",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.close, color: Colors.black, size: 25),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                width: 400,
                height: 300,
                child: Image.asset(
                  "Assets/images/car2.webp",
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "All Features",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                _buildFeatureBox(
                  icon: Icons.settings_input_component_outlined,
                  title: "Transmission",
                  subtitle: "Automatic",
                ),
                const SizedBox(width: 20),
                _buildFeatureBox(
                  icon: Icons.event_seat,
                  title: "Doors & Seats",
                  subtitle: "2 Doors & 4 Seats",
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                _buildFeatureBox(
                  icon: Icons.ac_unit_outlined,
                  title: "Air Condition",
                  subtitle: "Climate Control",
                ),
                const SizedBox(width: 20),
                _buildFeatureBox(
                  icon: Icons.local_gas_station_outlined,
                  title: "Fuel Type",
                  subtitle: "Petrol",
                ),
              ],
            ),

            const Text("Total Price", style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "1200/day",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFF7474BF), Color(0xFF348AC7D)],
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed(AddCard.routename);
                    },
                    child: const Text(
                      "Book Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureBox({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white, // تم تعديل الأبيض الشفاف لأبيض واضح
        ),
        height: 150,
        width: 150,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon, color: Colors.blueAccent),
              const SizedBox(height: 15),
              Text(
                title,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                subtitle,
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
