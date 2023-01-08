class UserModel1 {
  String? uid;
  String? email;
  String? firstName;
  String? secondName;

  UserModel1({this.uid, this.email, this.firstName, this.secondName});

  // receiving data from server
  factory UserModel1.fromMap(map) {
    return UserModel1(
      uid: map['uid'],
      email: map['email'],
      firstName: map['firstName'],
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'firstName': firstName,
    };
  }
}
