import 'dart:convert';
import 'package:http/http.dart' as http;

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

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: int.parse(json['id']),
      name: json['name'],
      imageUrl: json['imageUrl'],
      isOnline: json['isOnline'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id.toString(),
      'name': name,
      'imageUrl': imageUrl,
      'isOnline': isOnline,
    };
  }
}

Future<List<User>> fetchUsers() async {
  final response = await http.get('http://localhost:8080/users');


  if (response.statusCode == 200) {
    List<dynamic> data = jsonDecode(response.body);
    List<User> users = data.map((userJson) => User.fromJson(userJson)).toList();
    return users;
  } else {
    throw Exception('Falha ao carregar os usuários');
  }
}

void main() async {
  List<User> users = await fetchUsers();
  print(users);
}

final User currentUser = User(
  id: 0,
  name: 'Carlos',
  imageUrl: '',
  isOnline: true,
);

final User Rogério = User(
  id: 1,
  name: 'Rogério',
  imageUrl: '',
  isOnline: true,
);

final User Alberto = User(
  id: 2,
  name: 'Alberto',
  imageUrl: '',
  isOnline: true,
);
