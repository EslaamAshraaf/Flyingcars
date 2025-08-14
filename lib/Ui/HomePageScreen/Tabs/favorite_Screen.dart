import 'package:carshop/Models/carModel.dart';
import 'package:flutter/material.dart';
import '../Widgets/CarCard.dart';

class FavoriteScreen extends StatelessWidget {
  // This will hold the cars the user added to favorites
  final List<Car> favoriteCars;

  // Pass the list when creating the screen
   FavoriteScreen({
    super.key,
    required this.favoriteCars,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Favorites")),
      body: favoriteCars.isEmpty
          ? const Center(child: Text("No favorites yet"))
          : ListView.builder(
        itemCount: favoriteCars.length,
        itemBuilder: (context, index) {
          final car = favoriteCars[index];
          return CarCardWidget(
            index: index,
            carName: car.name,
            carType: car.transmission,
            carImagePath: car.imageUrl,
            carPrice: car.pricePerDay.toString(),
            carRating: car.rating.toString(),
            carReviews: car.reviews.toString(),
          );
        },
      ),
    );
  }
}