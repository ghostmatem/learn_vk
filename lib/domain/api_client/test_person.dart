class Person {
  final String id;
  final String name;
  final String avatar;
  final String country;
  final String productName;

  Person({
    required this.id, 
    required this.name, 
    required this.avatar, 
    required this.country, 
    required this.productName});

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      id    :		json['id'],
      name		:		json['name'],
      avatar		:		json['avatar'],
      country		:		json['country'],
      productName		:		json['prod_name'],
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id'		:		id,
      'name'		:		name,
      'avatar'		:		avatar,
      'country'		:		country,
      'prod_name'		:		productName,
    };
  }
}