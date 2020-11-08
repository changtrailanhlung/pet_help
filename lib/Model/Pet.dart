class Pet {
  final String name;
  final String title;
  final String address;
  final String user;
  final String pathImg;
  final String distance;

  Pet({this.name, this.title, this.address, this.user, this.pathImg, this.distance});
  factory Pet.fromJson(Map<String, dynamic> json) {
    return Pet(
        name: json['name'],
      title: json['title'],
        address: json['address'],
        user: json['user'],
        pathImg: json['pathImg'],
        distance: json['distance'],
    );
  }
}
