/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

/// Database bindings for SMSAuth
abstract class SmsAuth extends _i1.SerializableEntity {
  SmsAuth._({
    this.id,
    required this.userId,
    required this.phoneNumber,
  });

  factory SmsAuth({
    int? id,
    required int userId,
    required String phoneNumber,
  }) = _SmsAuthImpl;

  factory SmsAuth.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return SmsAuth(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      userId:
          serializationManager.deserialize<int>(jsonSerialization['userId']),
      phoneNumber: serializationManager
          .deserialize<String>(jsonSerialization['phoneNumber']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  /// The id of the user, corresponds to the id field in the [UserInfo].
  int userId;

  /// The phone number of the user.
  String phoneNumber;

  SmsAuth copyWith({
    int? id,
    int? userId,
    String? phoneNumber,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'phoneNumber': phoneNumber,
    };
  }
}

class _Undefined {}

class _SmsAuthImpl extends SmsAuth {
  _SmsAuthImpl({
    int? id,
    required int userId,
    required String phoneNumber,
  }) : super._(
          id: id,
          userId: userId,
          phoneNumber: phoneNumber,
        );

  @override
  SmsAuth copyWith({
    Object? id = _Undefined,
    int? userId,
    String? phoneNumber,
  }) {
    return SmsAuth(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      phoneNumber: phoneNumber ?? this.phoneNumber,
    );
  }
}
