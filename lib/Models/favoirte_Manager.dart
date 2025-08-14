import 'package:carshop/Models/carModel.dart';

class FavoritesManager {
  static final List<Car> favoriteCars = [];

  static void addToFavorites(Car car) {
    if (!favoriteCars.contains(car)) {
      favoriteCars.add(car);
    }
  }
}
