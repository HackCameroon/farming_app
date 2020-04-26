

class User {
  int id;
  String uid;
  String image;
  //List<String> posts;
  String name;

  User({this.id, this.uid,  this.name, this.image});

  Map<String, dynamic> toMap() =>{
    "id": id,
    "uid": uid,
    "image": image,

    "name":name,
  };

  factory User.fromMap(Map<String, dynamic> json) => new User(
      id: json["id"],
      //posts:json["posts"].cast<String>(),
      uid:json["uid"],
      image:json["image"],
      name: json["name"],
  );

  @override
  String toString() {
    return 'User{id: $id, uid: $uid, image: $image, name $name}';
  }

}