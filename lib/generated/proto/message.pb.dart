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
    ..e<CallType>(1, 'type', $pb.PbFieldType.OE, defaultOrMaker: CallType.AUTH, valueOf: CallType.valueOf, enumValues: CallType.values)
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
  CallType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(CallType v) { setField(1, v); }
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
    ..a<$core.List<$core.int>>(1, 'userid', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, 'token', $pb.PbFieldType.OY)
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
  $core.List<$core.int> get userid => $_getN(0);
  @$pb.TagNumber(1)
  set userid($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserid() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get token => $_getN(1);
  @$pb.TagNumber(2)
  set token($core.List<$core.int> v) { $_setBytes(1, v); }
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

class HeartBeat extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('HeartBeat', package: const $pb.PackageName('im'), createEmptyInstance: create)
    ..a<$core.int>(1, 'timestamp', $pb.PbFieldType.O3)
    ..a<$core.int>(2, 'serverReplyTimestamp', $pb.PbFieldType.O3, protoName: 'serverReplyTimestamp')
    ..hasRequiredFields = false
  ;

  HeartBeat._() : super();
  factory HeartBeat() => create();
  factory HeartBeat.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HeartBeat.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  HeartBeat clone() => HeartBeat()..mergeFromMessage(this);
  HeartBeat copyWith(void Function(HeartBeat) updates) => super.copyWith((message) => updates(message as HeartBeat));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HeartBeat create() => HeartBeat._();
  HeartBeat createEmptyInstance() => create();
  static $pb.PbList<HeartBeat> createRepeated() => $pb.PbList<HeartBeat>();
  @$core.pragma('dart2js:noInline')
  static HeartBeat getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HeartBeat>(create);
  static HeartBeat _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get timestamp => $_getIZ(0);
  @$pb.TagNumber(1)
  set timestamp($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestamp() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get serverReplyTimestamp => $_getIZ(1);
  @$pb.TagNumber(2)
  set serverReplyTimestamp($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasServerReplyTimestamp() => $_has(1);
  @$pb.TagNumber(2)
  void clearServerReplyTimestamp() => clearField(2);
}

class MsgData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MsgData', package: const $pb.PackageName('im'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'uid', $pb.PbFieldType.OY)
    ..e<MsgType>(2, 'type', $pb.PbFieldType.OE, defaultOrMaker: MsgType.TEXT_SIMPLE, valueOf: MsgType.valueOf, enumValues: MsgType.values)
    ..a<$core.List<$core.int>>(3, 'from', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(4, 'to', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(5, 'groupid', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(6, 'content', $pb.PbFieldType.OY)
    ..e<PlatformType>(7, 'platform', $pb.PbFieldType.OE, defaultOrMaker: PlatformType.android, valueOf: PlatformType.valueOf, enumValues: PlatformType.values)
    ..a<$core.int>(8, 'timestamp', $pb.PbFieldType.O3)
    ..a<$core.List<$core.int>>(9, 'extra', $pb.PbFieldType.OY)
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
  $core.List<$core.int> get uid => $_getN(0);
  @$pb.TagNumber(1)
  set uid($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);

  @$pb.TagNumber(2)
  MsgType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(MsgType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get from => $_getN(2);
  @$pb.TagNumber(3)
  set from($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFrom() => $_has(2);
  @$pb.TagNumber(3)
  void clearFrom() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get to => $_getN(3);
  @$pb.TagNumber(4)
  set to($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTo() => $_has(3);
  @$pb.TagNumber(4)
  void clearTo() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get groupid => $_getN(4);
  @$pb.TagNumber(5)
  set groupid($core.List<$core.int> v) { $_setBytes(4, v); }
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
  $core.int get timestamp => $_getIZ(7);
  @$pb.TagNumber(8)
  set timestamp($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasTimestamp() => $_has(7);
  @$pb.TagNumber(8)
  void clearTimestamp() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<$core.int> get extra => $_getN(8);
  @$pb.TagNumber(9)
  set extra($core.List<$core.int> v) { $_setBytes(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasExtra() => $_has(8);
  @$pb.TagNumber(9)
  void clearExtra() => clearField(9);
}

class MsgContentFile extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MsgContentFile', package: const $pb.PackageName('im'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'fileName', $pb.PbFieldType.OY, protoName: 'fileName')
    ..a<$core.List<$core.int>>(2, 'fileUrl', $pb.PbFieldType.OY, protoName: 'fileUrl')
    ..a<$core.List<$core.int>>(3, 'fileType', $pb.PbFieldType.OY, protoName: 'fileType')
    ..a<$core.int>(4, 'fileSize', $pb.PbFieldType.O3, protoName: 'fileSize')
    ..a<$core.List<$core.int>>(5, 'thumbnailUrl', $pb.PbFieldType.OY, protoName: 'thumbnailUrl')
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
  $core.List<$core.int> get fileName => $_getN(0);
  @$pb.TagNumber(1)
  set fileName($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFileName() => $_has(0);
  @$pb.TagNumber(1)
  void clearFileName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get fileUrl => $_getN(1);
  @$pb.TagNumber(2)
  set fileUrl($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFileUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearFileUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get fileType => $_getN(2);
  @$pb.TagNumber(3)
  set fileType($core.List<$core.int> v) { $_setBytes(2, v); }
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
  $core.List<$core.int> get thumbnailUrl => $_getN(4);
  @$pb.TagNumber(5)
  set thumbnailUrl($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasThumbnailUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearThumbnailUrl() => clearField(5);
}

class MsgContentMedia extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MsgContentMedia', package: const $pb.PackageName('im'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'mediaUrl', $pb.PbFieldType.OY, protoName: 'mediaUrl')
    ..e<MsgMediaType>(2, 'mediaType', $pb.PbFieldType.OE, protoName: 'mediaType', defaultOrMaker: MsgMediaType.VOICE, valueOf: MsgMediaType.valueOf, enumValues: MsgMediaType.values)
    ..a<$core.int>(3, 'duration', $pb.PbFieldType.O3)
    ..a<$core.int>(4, 'fileSize', $pb.PbFieldType.O3, protoName: 'fileSize')
    ..a<$core.List<$core.int>>(5, 'thumbnailUrl', $pb.PbFieldType.OY, protoName: 'thumbnailUrl')
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
  $core.List<$core.int> get mediaUrl => $_getN(0);
  @$pb.TagNumber(1)
  set mediaUrl($core.List<$core.int> v) { $_setBytes(0, v); }
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
  $core.List<$core.int> get thumbnailUrl => $_getN(4);
  @$pb.TagNumber(5)
  set thumbnailUrl($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasThumbnailUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearThumbnailUrl() => clearField(5);
}

class MsgRead extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MsgRead', package: const $pb.PackageName('im'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'uid', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, 'userid', $pb.PbFieldType.OY)
    ..e<PlatformType>(3, 'platform', $pb.PbFieldType.OE, defaultOrMaker: PlatformType.android, valueOf: PlatformType.valueOf, enumValues: PlatformType.values)
    ..a<$core.List<$core.int>>(4, 'timestamp', $pb.PbFieldType.OY)
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
  $core.List<$core.int> get uid => $_getN(0);
  @$pb.TagNumber(1)
  set uid($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get userid => $_getN(1);
  @$pb.TagNumber(2)
  set userid($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserid() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserid() => clearField(2);

  @$pb.TagNumber(3)
  PlatformType get platform => $_getN(2);
  @$pb.TagNumber(3)
  set platform(PlatformType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPlatform() => $_has(2);
  @$pb.TagNumber(3)
  void clearPlatform() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get timestamp => $_getN(3);
  @$pb.TagNumber(4)
  set timestamp($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTimestamp() => $_has(3);
  @$pb.TagNumber(4)
  void clearTimestamp() => clearField(4);
}

