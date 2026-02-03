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

  static List<Property> dummyProperties = [
    Property(
      id: '1',
      ownerId: '1',
      title: 'Luxury Villa',
      location: 'Suburban Area, Green City',
      price: 5000,
      imageUrl: 'https://images.unsplash.com/photo-1580587771525-78b9dba3b914',
      images: [
        'https://images.unsplash.com/photo-1580587771525-78b9dba3b914',
        'https://images.unsplash.com/photo-1580587771525-78b9dba3b915',
      ],
      amenities: ['Pool', 'Garden', 'Tennis Court', 'Security'],
      description: 'Luxurious villa with private pool and tennis court.',
      latitude: 43.6532,
      longitude: 79.3832,
      type: 'House',
    ),

    Property(
      id: '2',
      ownerId: '2',
      title: 'Modern Apartment',
      location: 'Downtown, Business District',
      price: 2800,
      imageUrl: 'https://images.unsplash.com/photo-1502673530728-f79b4cab31b1',
      images: [
        'https://images.unsplash.com/photo-1502673530728-f79b4cab31b1',
        'https://images.unsplash.com/photo-1502673530728-f79b4cab31b2',
      ],
      amenities: ['Elevator', 'Gym', 'Security'],
      description: 'Modern apartment in the heart of the city.',
      latitude: 40.7128,
      longitude: -74.0060,
      type: 'Apartment',
    ),

    Property(
      id: '3',
      ownerId: '3',
      title: 'Beach House',
      location: 'Ocean Drive, Sunny Beach',
      price: 4200,
      imageUrl: 'https://images.unsplash.com/photo-1505691938895-1758d7feb511',
      images: [
        'https://images.unsplash.com/photo-1505691938895-1758d7feb511',
        'https://images.unsplash.com/photo-1505691938895-1758d7feb512',
      ],
      amenities: ['Sea View', 'Balcony', 'Parking'],
      description: 'Beachfront house with stunning ocean views.',
      latitude: 25.7617,
      longitude: -80.1918,
      type: 'House',
    ),

    Property(
      id: '4',
      ownerId: '4',
      title: 'Country Cottage',
      location: 'Hillside, Countryside',
      price: 1800,
      imageUrl: 'https://images.unsplash.com/photo-1568605114967-8130f3a36994',
      images: [
        'https://images.unsplash.com/photo-1568605114967-8130f3a36994',
        'https://images.unsplash.com/photo-1568605114967-8130f3a36995',
      ],
      amenities: ['Fireplace', 'Garden', 'Parking'],
      description: 'Cozy cottage surrounded by nature.',
      latitude: 51.5074,
      longitude: -0.1278,
      type: 'Cottage',
    ),

    Property(
      id: '5',
      ownerId: '2',
      title: 'Studio Apartment',
      location: 'University District, Education City',
      price: 1600,
      imageUrl: 'https://images.unsplash.com/photo-1522156373667-4c7234bbd804',
      images: [
        'https://images.unsplash.com/photo-1522156373667-4c7234bbd804',
        'https://images.unsplash.com/photo-1522156373667-4c7234bbd805',
      ],
      amenities: ['WiFi', 'Laundry'],
      description: 'Compact studio ideal for students.',
      latitude: 34.0522,
      longitude: -118.2437,
      type: 'Studio',
    ),

    Property(
      id: '6',
      ownerId: '5',
      title: 'Penthouse Suite',
      location: 'Skyline Avenue, Metropolis',
      price: 6200,
      imageUrl: 'https://images.unsplash.com/photo-1493809842364-78817add7ffb',
      images: [
        'https://images.unsplash.com/photo-1493809842364-78817add7ffb',
        'https://images.unsplash.com/photo-1493809842364-78817add7ffc',
      ],
      amenities: ['Rooftop', 'Private Elevator', 'City View'],
      description: 'Exclusive penthouse with panoramic city views.',
      latitude: 48.8566,
      longitude: 2.3522,
      type: 'Penthouse',
    ),

    Property(
      id: '7',
      ownerId: '6',
      title: 'Mountain Cabin',
      location: 'Alpine Road, Snow Valley',
      price: 2300,
      imageUrl: 'https://images.unsplash.com/photo-1449157291145-7efd050a4d0e',
      images: [
        'https://images.unsplash.com/photo-1449157291145-7efd050a4d0e',
        'https://images.unsplash.com/photo-1449157291145-7efd050a4d0f',
      ],
      amenities: ['Fireplace', 'Mountain View'],
      description: 'Rustic cabin with breathtaking mountain scenery.',
      latitude: 46.8182,
      longitude: 8.2275,
      type: 'Cabin',
    ),

    Property(
      id: '8',
      ownerId: '7',
      title: 'Office Space',
      location: 'Financial Center, Capital City',
      price: 3500,
      imageUrl: 'https://images.unsplash.com/photo-1497366216548-37526070297c',
      images: [
        'https://images.unsplash.com/photo-1497366216548-37526070297c',
        'https://images.unsplash.com/photo-1497366216548-37526070297d',
      ],
      amenities: ['Meeting Rooms', 'Reception', 'Security'],
      description: 'Professional office space in prime location.',
      latitude: 37.7749,
      longitude: -122.4194,
      type: 'Office',
    ),

    Property(
      id: '9',
      ownerId: '8',
      title: 'Loft Apartment',
      location: 'Art District, Creative City',
      price: 2600,
      imageUrl: 'https://images.unsplash.com/photo-1502005097973-6a7082348e28',
      images: [
        'https://images.unsplash.com/photo-1502005097973-6a7082348e28',
        'https://images.unsplash.com/photo-1502005097973-6a7082348e29',
      ],
      amenities: ['Open Space', 'High Ceiling'],
      description: 'Stylish loft in an artistic neighborhood.',
      latitude: 52.5200,
      longitude: 13.4050,
      type: 'Loft',
    ),

    Property(
      id: '10',
      ownerId: '9',
      title: 'Suburban House',
      location: 'Family Park, Quiet Town',
      price: 2100,
      imageUrl: 'https://images.unsplash.com/photo-1570129477492-45c003edd2be',
      images: [
        'https://images.unsplash.com/photo-1570129477492-45c003edd2be',
        'https://images.unsplash.com/photo-1570129477492-45c003edd2bf',
      ],
      amenities: ['Garage', 'Backyard'],
      description: 'Perfect family home in a peaceful area.',
      latitude: 35.6895,
      longitude: 139.6917,
      type: 'House',
    ),

    Property(
      id: '11',
      ownerId: '10',
      title: 'Resort Bungalow',
      location: 'Palm Bay, Tropical Island',
      price: 4800,
      imageUrl: 'https://images.unsplash.com/photo-1507089947368-19c1da9775ae',
      images: [
        'https://images.unsplash.com/photo-1507089947368-19c1da9775ae',
        'https://images.unsplash.com/photo-1507089947368-19c1da9775af',
      ],
      amenities: ['Private Beach', 'Pool', 'Spa'],
      description: 'Luxury bungalow in a tropical resort.',
      latitude: -8.3405,
      longitude: 115.0920,
      type: 'Bungalow',
    ),

    Property(
      id: '12',
      ownerId: '11',
      title: 'Commercial Warehouse',
      location: 'Industrial Zone, Logistics City',
      price: 3900,
      imageUrl: 'https://images.unsplash.com/photo-1581090700227-1e37b190418e',
      images: [
        'https://images.unsplash.com/photo-1581090700227-1e37b190418e',
        'https://images.unsplash.com/photo-1581090700227-1e37b190418f',
      ],
      amenities: ['Loading Dock', 'High Ceiling', 'Security'],
      description: 'Spacious warehouse ideal for logistics operations.',
      latitude: 41.8781,
      longitude: -87.6298,
      type: 'Warehouse',
    ),
  ];

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
