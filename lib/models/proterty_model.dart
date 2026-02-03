import 'package:rental_application/models/rating_mode.dart';

class Property {
  final String id;
  final String ownerId;
  final String title;
  final String location;
  final double price;
  final String imageUrl;
  final List<String> images;
  final double latitude;
  final double longitude;
  final bool isAvaliable;
  final List<String> amenities;
  final String description;
  final String type;

  late final double avaregeRating;
  late final int numberOfRatins;

  Property({
    required this.id,
    required this.ownerId,
    required this.title,
    required this.location,
    required this.price,
    required this.imageUrl,
    required this.images,
    required this.latitude,
    required this.longitude,
    this.isAvaliable = true,
    this.amenities = const [],
    this.description = '',
    this.type = '',
  }) {
    final ratings = Rating.dummyRatings
        .where((r) => r.propertyId == id)
        .toList();

    numberOfRatins = ratings.length;

    if (ratings.isEmpty) {
      avaregeRating = 0.0;
    } else {
      final sum = ratings.fold<double>(0.0, (total, r) => total + r.rating);
      avaregeRating = sum / ratings.length;
    }
  }

  static List<Property> dummyProperties = [];

  // add a static list to track favorite properties
  static List<String> favoritePropertyIds = [];

  // add a method to check if a property is favorited
  bool get isFavorite => favoritePropertyIds.contains(id);

  // add a method to toggle favorite status
  static void toggleFavorite(String propertyId) {
    if (favoritePropertyIds.contains(propertyId)) {
      favoritePropertyIds.remove(propertyId);
    } else {
      favoritePropertyIds.add(propertyId);
    }
  }
}
