/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

/// Database Table for Tracking failed SMS sign in attempts. Saves IP address, phone number
/// and time to prevent brute force attacks.
class SmsFailedSignIn extends _i1.SerializableEntity {
  SmsFailedSignIn({
    this.id,
    required this.phoneNumber,
    required this.time,
    required this.ipAddress,
  });

  factory SmsFailedSignIn.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return SmsFailedSignIn(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      phoneNumber: serializationManager
          .deserialize<String>(jsonSerialization['phoneNumber']),
      time:
          serializationManager.deserialize<DateTime>(jsonSerialization['time']),
      ipAddress: serializationManager
          .deserialize<String>(jsonSerialization['ipAddress']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  /// The phone number of the user.
  String phoneNumber;

  /// The time of the sign in attempt.
  DateTime time;

  /// The IP address of the sign in attempt.
  String ipAddress;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'phoneNumber': phoneNumber,
      'time': time,
      'ipAddress': ipAddress,
    };
  }
}