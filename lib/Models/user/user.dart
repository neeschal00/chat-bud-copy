import 'dart:convert';

class User {
  List<dynamic>? blockedUsers;
  String? id;
  String? username;
  String? email;
  String? password;
  bool? isAdmin;
  bool? isActive;
  bool? isDeleted;
  bool? isBlocked;
  List<dynamic>? buddies;
  List<dynamic>? groups;
  List<dynamic>? chats;
  List<dynamic>? channels;
  List<dynamic>? messages;
  List<dynamic>? notifications;
  String? profilePicture;
  String? bio;
  String? createdAt;
  String? updatedAt;
  int? v;

  User({
    this.blockedUsers,
    this.id,
    this.username,
    this.email,
    this.password,
    this.isAdmin,
    this.isActive,
    this.isDeleted,
    this.isBlocked,
    this.buddies,
    this.groups,
    this.chats,
    this.channels,
    this.messages,
    this.notifications,
    this.profilePicture,
    this.bio,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory User.fromMap(Map<String, dynamic> data) => User(
        blockedUsers: data['blockedUsers'] as List<dynamic>?,
        id: data['_id'] as String?,
        username: data['username'] as String?,
        email: data['email'] as String?,
        password: data['password'] as String?,
        isAdmin: data['isAdmin'] as bool?,
        isActive: data['isActive'] as bool?,
        isDeleted: data['isDeleted'] as bool?,
        isBlocked: data['isBlocked'] as bool?,
        buddies: data['buddies'] as List<dynamic>?,
        groups: data['groups'] as List<dynamic>?,
        chats: data['chats'] as List<dynamic>?,
        channels: data['channels'] as List<dynamic>?,
        messages: data['messages'] as List<dynamic>?,
        notifications: data['notifications'] as List<dynamic>?,
        profilePicture: data['profile_picture'] as String?,
        bio: data['bio'] as String?,
        createdAt: data['createdAt'] as String?,
        updatedAt: data['updatedAt'] as String?,
        v: data['__v'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'blockedUsers': blockedUsers,
        '_id': id,
        'username': username,
        'email': email,
        'password': password,
        'isAdmin': isAdmin,
        'isActive': isActive,
        'isDeleted': isDeleted,
        'isBlocked': isBlocked,
        'buddies': buddies,
        'groups': groups,
        'chats': chats,
        'channels': channels,
        'messages': messages,
        'notifications': notifications,
        'profile_picture': profilePicture,
        'bio': bio,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        '__v': v,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [User].
  factory User.fromJson(String data) {
    return User.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [User] to a JSON string.
  String toJson() => json.encode(toMap());
}
