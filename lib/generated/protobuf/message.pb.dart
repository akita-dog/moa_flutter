///
//  Generated code. Do not modify.
//  source: message.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'message.pbenum.dart';

export 'message.pbenum.dart';

class Call extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Call', package: const $pb.PackageName('im'), createEmptyInstance: create)
    ..a<$core.int>(1, 'type', $pb.PbFieldType.O3)
    ..a<$core.List<$core.int>>(2, 'content', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  Call._() : super();
  factory Call() => create();
  factory Call.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Call.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Call clone() => Call()..mergeFromMessage(this);
  Call copyWith(void Function(Call) updates) => super.copyWith((message) => updates(message as Call));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Call create() => Call._();
  Call createEmptyInstance() => create();
  static $pb.PbList<Call> createRepeated() => $pb.PbList<Call>();
  @$core.pragma('dart2js:noInline')
  static Call getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Call>(create);
  static Call _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get type => $_getIZ(0);
  @$pb.TagNumber(1)
  set type($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get content => $_getN(1);
  @$pb.TagNumber(2)
  set content($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
}

class Auth extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Auth', package: const $pb.PackageName('im'), createEmptyInstance: create)
    ..aOS(1, 'userid')
    ..aOS(2, 'token')
    ..e<PlatformType>(3, 'platform', $pb.PbFieldType.OE, defaultOrMaker: PlatformType.android, valueOf: PlatformType.valueOf, enumValues: PlatformType.values)
    ..aOB(4, 'success')
    ..hasRequiredFields = false
  ;

  Auth._() : super();
  factory Auth() => create();
  factory Auth.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Auth.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Auth clone() => Auth()..mergeFromMessage(this);
  Auth copyWith(void Function(Auth) updates) => super.copyWith((message) => updates(message as Auth));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Auth create() => Auth._();
  Auth createEmptyInstance() => create();
  static $pb.PbList<Auth> createRepeated() => $pb.PbList<Auth>();
  @$core.pragma('dart2js:noInline')
  static Auth getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Auth>(create);
  static Auth _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userid => $_getSZ(0);
  @$pb.TagNumber(1)
  set userid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);
  @$pb.TagNumber(2)
  set token($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => clearField(2);

  @$pb.TagNumber(3)
  PlatformType get platform => $_getN(2);
  @$pb.TagNumber(3)
  set platform(PlatformType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPlatform() => $_has(2);
  @$pb.TagNumber(3)
  void clearPlatform() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get success => $_getBF(3);
  @$pb.TagNumber(4)
  set success($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSuccess() => $_has(3);
  @$pb.TagNumber(4)
  void clearSuccess() => clearField(4);
}

class MsgData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MsgData', package: const $pb.PackageName('im'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..a<$core.int>(2, 'type', $pb.PbFieldType.O3)
    ..aOS(3, 'from')
    ..aOS(4, 'to')
    ..aOS(5, 'groupid')
    ..a<$core.List<$core.int>>(6, 'content', $pb.PbFieldType.OY)
    ..e<PlatformType>(7, 'platform', $pb.PbFieldType.OE, defaultOrMaker: PlatformType.android, valueOf: PlatformType.valueOf, enumValues: PlatformType.values)
    ..aOS(8, 'extra')
    ..hasRequiredFields = false
  ;

  MsgData._() : super();
  factory MsgData() => create();
  factory MsgData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MsgData clone() => MsgData()..mergeFromMessage(this);
  MsgData copyWith(void Function(MsgData) updates) => super.copyWith((message) => updates(message as MsgData));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgData create() => MsgData._();
  MsgData createEmptyInstance() => create();
  static $pb.PbList<MsgData> createRepeated() => $pb.PbList<MsgData>();
  @$core.pragma('dart2js:noInline')
  static MsgData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgData>(create);
  static MsgData _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get type => $_getIZ(1);
  @$pb.TagNumber(2)
  set type($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get from => $_getSZ(2);
  @$pb.TagNumber(3)
  set from($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFrom() => $_has(2);
  @$pb.TagNumber(3)
  void clearFrom() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get to => $_getSZ(3);
  @$pb.TagNumber(4)
  set to($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTo() => $_has(3);
  @$pb.TagNumber(4)
  void clearTo() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get groupid => $_getSZ(4);
  @$pb.TagNumber(5)
  set groupid($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasGroupid() => $_has(4);
  @$pb.TagNumber(5)
  void clearGroupid() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get content => $_getN(5);
  @$pb.TagNumber(6)
  set content($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasContent() => $_has(5);
  @$pb.TagNumber(6)
  void clearContent() => clearField(6);

  @$pb.TagNumber(7)
  PlatformType get platform => $_getN(6);
  @$pb.TagNumber(7)
  set platform(PlatformType v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasPlatform() => $_has(6);
  @$pb.TagNumber(7)
  void clearPlatform() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get extra => $_getSZ(7);
  @$pb.TagNumber(8)
  set extra($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasExtra() => $_has(7);
  @$pb.TagNumber(8)
  void clearExtra() => clearField(8);
}

class MsgContentText extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MsgContentText', package: const $pb.PackageName('im'), createEmptyInstance: create)
    ..aOS(1, 'text')
    ..hasRequiredFields = false
  ;

  MsgContentText._() : super();
  factory MsgContentText() => create();
  factory MsgContentText.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgContentText.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MsgContentText clone() => MsgContentText()..mergeFromMessage(this);
  MsgContentText copyWith(void Function(MsgContentText) updates) => super.copyWith((message) => updates(message as MsgContentText));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgContentText create() => MsgContentText._();
  MsgContentText createEmptyInstance() => create();
  static $pb.PbList<MsgContentText> createRepeated() => $pb.PbList<MsgContentText>();
  @$core.pragma('dart2js:noInline')
  static MsgContentText getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgContentText>(create);
  static MsgContentText _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => clearField(1);
}

class MsgContentFile extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MsgContentFile', package: const $pb.PackageName('im'), createEmptyInstance: create)
    ..aOS(1, 'fileName', protoName: 'fileName')
    ..aOS(2, 'fileUrl', protoName: 'fileUrl')
    ..aOS(3, 'fileType', protoName: 'fileType')
    ..a<$core.int>(4, 'fileSize', $pb.PbFieldType.O3, protoName: 'fileSize')
    ..aOS(5, 'thumbnailUrl', protoName: 'thumbnailUrl')
    ..hasRequiredFields = false
  ;

  MsgContentFile._() : super();
  factory MsgContentFile() => create();
  factory MsgContentFile.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgContentFile.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MsgContentFile clone() => MsgContentFile()..mergeFromMessage(this);
  MsgContentFile copyWith(void Function(MsgContentFile) updates) => super.copyWith((message) => updates(message as MsgContentFile));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgContentFile create() => MsgContentFile._();
  MsgContentFile createEmptyInstance() => create();
  static $pb.PbList<MsgContentFile> createRepeated() => $pb.PbList<MsgContentFile>();
  @$core.pragma('dart2js:noInline')
  static MsgContentFile getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgContentFile>(create);
  static MsgContentFile _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fileName => $_getSZ(0);
  @$pb.TagNumber(1)
  set fileName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFileName() => $_has(0);
  @$pb.TagNumber(1)
  void clearFileName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get fileUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set fileUrl($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFileUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearFileUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get fileType => $_getSZ(2);
  @$pb.TagNumber(3)
  set fileType($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFileType() => $_has(2);
  @$pb.TagNumber(3)
  void clearFileType() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get fileSize => $_getIZ(3);
  @$pb.TagNumber(4)
  set fileSize($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFileSize() => $_has(3);
  @$pb.TagNumber(4)
  void clearFileSize() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get thumbnailUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set thumbnailUrl($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasThumbnailUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearThumbnailUrl() => clearField(5);
}

class MsgContentMedia extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MsgContentMedia', package: const $pb.PackageName('im'), createEmptyInstance: create)
    ..aOS(1, 'mediaUrl', protoName: 'mediaUrl')
    ..e<MsgMediaType>(2, 'mediaType', $pb.PbFieldType.OE, protoName: 'mediaType', defaultOrMaker: MsgMediaType.VOICE, valueOf: MsgMediaType.valueOf, enumValues: MsgMediaType.values)
    ..a<$core.int>(3, 'duration', $pb.PbFieldType.O3)
    ..a<$core.int>(4, 'fileSize', $pb.PbFieldType.O3, protoName: 'fileSize')
    ..aOS(5, 'thumbnailUrl', protoName: 'thumbnailUrl')
    ..hasRequiredFields = false
  ;

  MsgContentMedia._() : super();
  factory MsgContentMedia() => create();
  factory MsgContentMedia.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgContentMedia.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MsgContentMedia clone() => MsgContentMedia()..mergeFromMessage(this);
  MsgContentMedia copyWith(void Function(MsgContentMedia) updates) => super.copyWith((message) => updates(message as MsgContentMedia));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgContentMedia create() => MsgContentMedia._();
  MsgContentMedia createEmptyInstance() => create();
  static $pb.PbList<MsgContentMedia> createRepeated() => $pb.PbList<MsgContentMedia>();
  @$core.pragma('dart2js:noInline')
  static MsgContentMedia getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgContentMedia>(create);
  static MsgContentMedia _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get mediaUrl => $_getSZ(0);
  @$pb.TagNumber(1)
  set mediaUrl($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMediaUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearMediaUrl() => clearField(1);

  @$pb.TagNumber(2)
  MsgMediaType get mediaType => $_getN(1);
  @$pb.TagNumber(2)
  set mediaType(MsgMediaType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMediaType() => $_has(1);
  @$pb.TagNumber(2)
  void clearMediaType() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get duration => $_getIZ(2);
  @$pb.TagNumber(3)
  set duration($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDuration() => $_has(2);
  @$pb.TagNumber(3)
  void clearDuration() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get fileSize => $_getIZ(3);
  @$pb.TagNumber(4)
  set fileSize($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFileSize() => $_has(3);
  @$pb.TagNumber(4)
  void clearFileSize() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get thumbnailUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set thumbnailUrl($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasThumbnailUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearThumbnailUrl() => clearField(5);
}

class MsgRead extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MsgRead', package: const $pb.PackageName('im'), createEmptyInstance: create)
    ..aOS(1, 'uid')
    ..aOS(2, 'from')
    ..aOS(3, 'to')
    ..e<PlatformType>(4, 'platform', $pb.PbFieldType.OE, defaultOrMaker: PlatformType.android, valueOf: PlatformType.valueOf, enumValues: PlatformType.values)
    ..aOS(5, 'timestamp')
    ..hasRequiredFields = false
  ;

  MsgRead._() : super();
  factory MsgRead() => create();
  factory MsgRead.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgRead.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MsgRead clone() => MsgRead()..mergeFromMessage(this);
  MsgRead copyWith(void Function(MsgRead) updates) => super.copyWith((message) => updates(message as MsgRead));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgRead create() => MsgRead._();
  MsgRead createEmptyInstance() => create();
  static $pb.PbList<MsgRead> createRepeated() => $pb.PbList<MsgRead>();
  @$core.pragma('dart2js:noInline')
  static MsgRead getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgRead>(create);
  static MsgRead _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get from => $_getSZ(1);
  @$pb.TagNumber(2)
  set from($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFrom() => $_has(1);
  @$pb.TagNumber(2)
  void clearFrom() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get to => $_getSZ(2);
  @$pb.TagNumber(3)
  set to($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTo() => $_has(2);
  @$pb.TagNumber(3)
  void clearTo() => clearField(3);

  @$pb.TagNumber(4)
  PlatformType get platform => $_getN(3);
  @$pb.TagNumber(4)
  set platform(PlatformType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPlatform() => $_has(3);
  @$pb.TagNumber(4)
  void clearPlatform() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get timestamp => $_getSZ(4);
  @$pb.TagNumber(5)
  set timestamp($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTimestamp() => $_has(4);
  @$pb.TagNumber(5)
  void clearTimestamp() => clearField(5);
}

