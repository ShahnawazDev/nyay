class Lawyer {
  final String name;
  final String phoneNumber;
  final String address;
  final double pricing;
  final String imageUrl;
  final String description;
  final double rating; // Added rating property (up to 5 stars)
  final bool isFavorite; // Added favorite status property

  Lawyer({
    required this.name,
    required this.phoneNumber,
    required this.address,
    required this.pricing,
    required this.imageUrl,
    required this.description,
    required this.rating,
    required this.isFavorite,
  });

  factory Lawyer.fromJson(Map<String, dynamic> json) {
    return Lawyer(
      name: json['name'] ?? '',
      phoneNumber: json['phoneNumber'] ?? '',
      address: json['address'] ?? '',
      pricing: json['pricing'] ?? 0.0,
      imageUrl: json['imageUrl'] ?? '',
      description: json['description'] ?? '',
      rating: json['rating'] ?? 0.0,
      isFavorite: json['isFavorite'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'phoneNumber': phoneNumber,
      'address': address,
      'pricing': pricing,
      'imageUrl': imageUrl,
      'description': description,
      'rating': rating,
      'isFavorite': isFavorite,
    };
  }
}
