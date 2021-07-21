import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import './models.dart';

class Photo extends Equatable {
  final String id;
  final String url;
  final String description;
  final User user;

  Photo({
    @required this.id,
    @required this.url,
    @required this.description,
    @required this.user,
  });

  factory Photo.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    return Photo(
      id: map['id'],
      url: map['urls']['regular'],
      description: map['description'] ?? 'No Description.',
      user: User.fromMap(map['user']),
    );
  }

  @override
  // TODO: implement props
  List<Object> get props => [id, url, description, user];

  @override
  // TODO: implement stringify
  bool get stringify => true;
}
