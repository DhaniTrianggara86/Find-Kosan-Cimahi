class  Space {

  final int id;
  late final String name;
  late final String imageUrl;
  late final double price;
  late final String city;
  late final String country;
  late final double rating;
  late final String address;
  late final String phone;
  late final String mapUrl;
  final List photos;
  final int? numberOfKitchen;
  final int? numberOfBedrooms;
  final int? numberOfCupboards;


  Space({
    required this.city,
    required this.country,
    required this.id,
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.rating,
    required this.address,
    required this.mapUrl,
    required this.phone,
    required this.numberOfBedrooms,
    required this.numberOfCupboards,
    required this.numberOfKitchen,
    required this.photos,

  });

  factory Space.fromJson(Map<String, dynamic> json){
    return Space(
      id: json['id'] as int,
      name: json['name'] as String,
      city: json['city'] as String,
      country: json['country'] as String,
      imageUrl: json['image_url'] as String,
      rating: json['rating'].toDouble(),
      address: json['address'] as String,
      price: json['price'] .toDouble(),
      phone: json['phone'] as String,
      mapUrl: json['map_url'] as String,
      photos: json['photos'] as List<dynamic>,
      numberOfKitchen: json['number_of_kitchen'] as int?,
      numberOfCupboards: json['number_of_cuppboards'] as int?,
      numberOfBedrooms: json['number_of_bedrooms'] as int?,

    );
  }
}