class UserInfoModel {
  String? email;
  String? password;
  String? name;
  String? phone;
  String? uId;
  String? gender;
  String? imageProfile;

  UserInfoModel({
    required this.email,
    this.password,
    this.name,
    this.phone,
    this.uId,
    this.gender,
    this.imageProfile,
  });
  factory UserInfoModel.formData(Map<String, dynamic> userData) {
    return UserInfoModel(
      email: userData['email'],
      password: userData['password'],
      name: userData['name'],
      phone: userData['phone'],
      uId: userData['uId'],
      gender: userData['gender'],
      imageProfile: userData['imageProfile'],
    );
  }

  Map<String, dynamic> userMapFirestore() => {
        'email': email,
        'password': password,
        'name': name,
        'phone': phone,
        'uId': uId,
        'gender': gender,
        'imageProfile': imageProfile,
      };
}
