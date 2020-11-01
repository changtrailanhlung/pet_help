class Pet {
  final String title;
  final String address;
  final String user;
  final String pathImg;

  Pet({this.title, this.address, this.user, this.pathImg});
  factory Pet.fromJson(Map<String, dynamic> json) {
    return Pet(
        title: json['title'],
        address: json['address'],
        user: json['user'],
        pathImg: json['pathImg']);
  }
}
