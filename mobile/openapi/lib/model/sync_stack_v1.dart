//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SyncStackV1 {
  /// Returns a new [SyncStackV1] instance.
  SyncStackV1({
    required this.createdAt,
    required this.id,
    required this.ownerId,
    required this.primaryAssetId,
    required this.updatedAt,
  });

  DateTime createdAt;

  String id;

  String ownerId;

  String primaryAssetId;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SyncStackV1 &&
    other.createdAt == createdAt &&
    other.id == id &&
    other.ownerId == ownerId &&
    other.primaryAssetId == primaryAssetId &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt.hashCode) +
    (id.hashCode) +
    (ownerId.hashCode) +
    (primaryAssetId.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'SyncStackV1[createdAt=$createdAt, id=$id, ownerId=$ownerId, primaryAssetId=$primaryAssetId, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'id'] = this.id;
      json[r'ownerId'] = this.ownerId;
      json[r'primaryAssetId'] = this.primaryAssetId;
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [SyncStackV1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SyncStackV1? fromJson(dynamic value) {
    upgradeDto(value, "SyncStackV1");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return SyncStackV1(
        createdAt: mapDateTime(json, r'createdAt', r'')!,
        id: mapValueOfType<String>(json, r'id')!,
        ownerId: mapValueOfType<String>(json, r'ownerId')!,
        primaryAssetId: mapValueOfType<String>(json, r'primaryAssetId')!,
        updatedAt: mapDateTime(json, r'updatedAt', r'')!,
      );
    }
    return null;
  }

  static List<SyncStackV1> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SyncStackV1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SyncStackV1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SyncStackV1> mapFromJson(dynamic json) {
    final map = <String, SyncStackV1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SyncStackV1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SyncStackV1-objects as value to a dart map
  static Map<String, List<SyncStackV1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SyncStackV1>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SyncStackV1.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'createdAt',
    'id',
    'ownerId',
    'primaryAssetId',
    'updatedAt',
  };
}

