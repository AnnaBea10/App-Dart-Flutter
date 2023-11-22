class User {

  final int id;
  final String name;
  final String imageUrl;
  final bool isOnline;

  User({
    this.id,
    this.name,
    this.imageUrl,
    this.isOnline,
  });

//Convertendo int para String, já que na api id=Long
Map<String, dynamic> toJson() {
  return{
    'id' : id.toString(),
    'name' : name,
    'imageUrl' : imageUrl,
    'isOnline' : isOnline,
  };
}

}

final User currentUser = User(
  id: 0,
  name: 'Carlos',
  imageUrl: '',
  isOnline: true,
);

final User ironMan = User(
  id: 1,
  name: 'Rogério',
  imageUrl: '',
  isOnline: true,
);
final User captainAmerica = User(
  id: 2,
  name: 'Alberto',
  imageUrl: '',
  isOnline: true,
);
