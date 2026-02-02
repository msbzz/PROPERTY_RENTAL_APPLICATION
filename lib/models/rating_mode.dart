class Rating {
  final String id;
  final String propertyId;
  final String userId;
  final String userName;
  final double rating;
  final String? comment;
  final DateTime timestamp;

  Rating({
    required this.id,
    required this.propertyId,
    required this.userId,
    required this.userName,
    required this.rating,
    required this.timestamp,
    this.comment,
  });
  static List<Rating> dummyRatings = [
    Rating(
      id: '1',
      propertyId: '1',
      userId: '1',
      userName: 'John Doe',
      rating: 4.5,
      comment:
          'Great property with amazing views! The location is perfect and the amenities are top-notch.',
      timestamp: DateTime.now().subtract(const Duration(days: 2)),
    ),

    Rating(
      id: '2',
      propertyId: '1',
      userId: '2',
      userName: 'Sarah Wilson',
      rating: 5.0,
      comment:
          'Absolutely loved my stay here. The property is exactly as described and the host was very helpful.',
      timestamp: DateTime.now().subtract(const Duration(hours: 12)),
    ),

    Rating(
      id: '3',
      propertyId: '1',
      userId: '3',
      userName: 'Mike Johnson',
      rating: 4.0,
      comment:
          'Nice place, good location. Could use some minor updates but overall a great experience.',
      timestamp: DateTime.now().subtract(const Duration(days: 5)),
    ),

    Rating(
      id: '4',
      propertyId: '2',
      userId: '4',
      userName: 'Emma Thompson',
      rating: 4.8,
      comment: 'Perfect beachfront location. Had an amazing stay!',
      timestamp: DateTime.now().subtract(const Duration(days: 1)),
    ),

    Rating(
      id: '5',
      propertyId: '3',
      userId: '5',
      userName: 'David Brown',
      rating: 4.6,
      comment:
          'The mountain views are breathtaking. Very peaceful location and comfortable stay.',
      timestamp: DateTime.now().subtract(const Duration(days: 3)),
    ),

    Rating(
      id: '6',
      propertyId: '2',
      userId: '6',
      userName: 'Olivia Martinez',
      rating: 4.2,
      comment:
          'Great place near the beach. Clean and well-maintained, would definitely return.',
      timestamp: DateTime.now().subtract(const Duration(days: 4)),
    ),

    Rating(
      id: '7',
      propertyId: '3',
      userId: '7',
      userName: 'James Anderson',
      rating: 5.0,
      comment:
          'Exceptional experience. Quiet surroundings and stunning scenery.',
      timestamp: DateTime.now().subtract(const Duration(days: 6)),
    ),

    Rating(
      id: '8',
      propertyId: '1',
      userId: '8',
      userName: 'Sophia Lee',
      rating: 4.7,
      comment:
          'Very comfortable stay. Everything was clean and well organized.',
      timestamp: DateTime.now().subtract(const Duration(days: 7)),
    ),

    Rating(
      id: '9',
      propertyId: '2',
      userId: '9',
      userName: 'William Harris',
      rating: 3.9,
      comment:
          'Good location but a bit noisy at night. Still a decent experience overall.',
      timestamp: DateTime.now().subtract(const Duration(days: 8)),
    ),

    Rating(
      id: '10',
      propertyId: '3',
      userId: '10',
      userName: 'Isabella Clark',
      rating: 4.9,
      comment: 'One of the best stays I have ever had. Highly recommended!',
      timestamp: DateTime.now().subtract(const Duration(days: 10)),
    ),
  ];
}
