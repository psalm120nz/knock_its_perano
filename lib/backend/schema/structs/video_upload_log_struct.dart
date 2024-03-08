// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VideoUploadLogStruct extends FFFirebaseStruct {
  VideoUploadLogStruct({
    LatLng? gps,
    String? youtubeurl,
    DateTime? date,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _gps = gps,
        _youtubeurl = youtubeurl,
        _date = date,
        super(firestoreUtilData);

  // "gps" field.
  LatLng? _gps;
  LatLng? get gps => _gps;
  set gps(LatLng? val) => _gps = val;
  bool hasGps() => _gps != null;

  // "youtubeurl" field.
  String? _youtubeurl;
  String get youtubeurl => _youtubeurl ?? '';
  set youtubeurl(String? val) => _youtubeurl = val;
  bool hasYoutubeurl() => _youtubeurl != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  set date(DateTime? val) => _date = val;
  bool hasDate() => _date != null;

  static VideoUploadLogStruct fromMap(Map<String, dynamic> data) =>
      VideoUploadLogStruct(
        gps: data['gps'] as LatLng?,
        youtubeurl: data['youtubeurl'] as String?,
        date: data['date'] as DateTime?,
      );

  static VideoUploadLogStruct? maybeFromMap(dynamic data) => data is Map
      ? VideoUploadLogStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'gps': _gps,
        'youtubeurl': _youtubeurl,
        'date': _date,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'gps': serializeParam(
          _gps,
          ParamType.LatLng,
        ),
        'youtubeurl': serializeParam(
          _youtubeurl,
          ParamType.String,
        ),
        'date': serializeParam(
          _date,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static VideoUploadLogStruct fromSerializableMap(Map<String, dynamic> data) =>
      VideoUploadLogStruct(
        gps: deserializeParam(
          data['gps'],
          ParamType.LatLng,
          false,
        ),
        youtubeurl: deserializeParam(
          data['youtubeurl'],
          ParamType.String,
          false,
        ),
        date: deserializeParam(
          data['date'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'VideoUploadLogStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VideoUploadLogStruct &&
        gps == other.gps &&
        youtubeurl == other.youtubeurl &&
        date == other.date;
  }

  @override
  int get hashCode => const ListEquality().hash([gps, youtubeurl, date]);
}

VideoUploadLogStruct createVideoUploadLogStruct({
  LatLng? gps,
  String? youtubeurl,
  DateTime? date,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    VideoUploadLogStruct(
      gps: gps,
      youtubeurl: youtubeurl,
      date: date,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

VideoUploadLogStruct? updateVideoUploadLogStruct(
  VideoUploadLogStruct? videoUploadLog, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    videoUploadLog
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addVideoUploadLogStructData(
  Map<String, dynamic> firestoreData,
  VideoUploadLogStruct? videoUploadLog,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (videoUploadLog == null) {
    return;
  }
  if (videoUploadLog.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && videoUploadLog.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final videoUploadLogData =
      getVideoUploadLogFirestoreData(videoUploadLog, forFieldValue);
  final nestedData =
      videoUploadLogData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = videoUploadLog.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getVideoUploadLogFirestoreData(
  VideoUploadLogStruct? videoUploadLog, [
  bool forFieldValue = false,
]) {
  if (videoUploadLog == null) {
    return {};
  }
  final firestoreData = mapToFirestore(videoUploadLog.toMap());

  // Add any Firestore field values
  videoUploadLog.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getVideoUploadLogListFirestoreData(
  List<VideoUploadLogStruct>? videoUploadLogs,
) =>
    videoUploadLogs
        ?.map((e) => getVideoUploadLogFirestoreData(e, true))
        .toList() ??
    [];
