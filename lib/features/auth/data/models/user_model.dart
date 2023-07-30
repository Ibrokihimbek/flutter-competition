class UserModel {
  int age;
  String userId;
  String docId;
  String fullName;
  String email;
  String createdAt;
  String imageUrl;
  String fcmToken;

  UserModel({
    required this.age,
    required this.userId,
    required this.docId,
    required this.fullName,
    required this.email,
    required this.createdAt,
    required this.imageUrl,
    required this.fcmToken,
  });

  factory UserModel.fromJson(Map<String, dynamic> jsonData) {
    return UserModel(
      age: jsonData['age'] as int? ?? 0,
      userId: jsonData['userId'] as String? ?? '',
      fullName: jsonData['fullName'] as String? ?? '',
      docId: jsonData['docId'] as String? ?? '',
      email: jsonData['email'] as String? ?? '',
      imageUrl: jsonData['imageUrl'] as String? ?? '',
      createdAt: jsonData['createdAt'] as String? ?? '',
      fcmToken: jsonData['fcm_token'] as String? ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'age': age,
      'userId': userId,
      'fullName': fullName,
      'docId': docId,
      'email': email,
      'createdAt': createdAt,
      'imageUrl': imageUrl,
      'fcm_token': fcmToken,
    };
  }
  @override
  String toString() {
    return ''' 
      age : $age,
      userId : $userId,
      fullName : $fullName,
      email : $email,
      createdAt : $createdAt,
      imageUrl : $imageUrl,
      docId : $docId,
      fcmToken : $fcmToken,
      ''';
  }
}