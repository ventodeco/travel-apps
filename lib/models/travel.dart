class Travel {
  int id;
  String name;
  String imageUrl;
  String subtitle;
  String shortAddress;
  String longAddress;
  String phoneNumber;
  bool isLiked;
  int rating;
  String mapUrl;
  List destinations;
  List imagesTravel;

  Travel({
    this.id,
    this.name,
    this.imageUrl,
    this.subtitle,
    this.shortAddress,
    this.longAddress,
    this.phoneNumber,
    this.isLiked,
    this.rating,
    this.mapUrl,
    this.destinations,
    this.imagesTravel,
  });

  Travel.fromJson(json) {
    id = json['ID'];
    name = json['Name'];
    imageUrl = json['ImageUrl'];
    subtitle = json['Subtitle'];
    shortAddress = json['ShortAddress'];
    longAddress = json['LongAddress'];
    phoneNumber = json['PhoneNumber'];
    isLiked = json['IsLiked'];
    rating = json['Rating'];
    mapUrl = json['MapUrl'];
    destinations = json['Destinations'];
    imagesTravel = json['ImagesTravel'];
  }
}
