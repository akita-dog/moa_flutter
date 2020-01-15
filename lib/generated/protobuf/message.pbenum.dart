///
//  Generated code. Do not modify.
//  source: message.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class CallType extends $pb.ProtobufEnum {
  static const CallType AUTH = CallType._(0, 'AUTH');
  static const CallType HEARTBEAT = CallType._(1, 'HEARTBEAT');
  static const CallType MESSAGE = CallType._(2, 'MESSAGE');
  static const CallType ACK_MESSAGE = CallType._(3, 'ACK_MESSAGE');
  static const CallType MESSAGE_READ = CallType._(4, 'MESSAGE_READ');
  static const CallType ACK_MESSAGE_READ = CallType._(5, 'ACK_MESSAGE_READ');
  static const CallType SYSTEM = CallType._(6, 'SYSTEM');
  static const CallType ACK_SYSTEM = CallType._(7, 'ACK_SYSTEM');

  static const $core.List<CallType> values = <CallType> [
    AUTH,
    HEARTBEAT,
    MESSAGE,
    ACK_MESSAGE,
    MESSAGE_READ,
    ACK_MESSAGE_READ,
    SYSTEM,
    ACK_SYSTEM,
  ];

  static final $core.Map<$core.int, CallType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CallType valueOf($core.int value) => _byValue[value];

  const CallType._($core.int v, $core.String n) : super(v, n);
}

class PlatformType extends $pb.ProtobufEnum {
  static const PlatformType android = PlatformType._(0, 'android');
  static const PlatformType iphone = PlatformType._(1, 'iphone');
  static const PlatformType ipad = PlatformType._(2, 'ipad');
  static const PlatformType windows = PlatformType._(3, 'windows');
  static const PlatformType mac = PlatformType._(4, 'mac');
  static const PlatformType browser = PlatformType._(5, 'browser');

  static const $core.List<PlatformType> values = <PlatformType> [
    android,
    iphone,
    ipad,
    windows,
    mac,
    browser,
  ];

  static final $core.Map<$core.int, PlatformType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PlatformType valueOf($core.int value) => _byValue[value];

  const PlatformType._($core.int v, $core.String n) : super(v, n);
}

class MsgType extends $pb.ProtobufEnum {
  static const MsgType TEXT_SIMPLE = MsgType._(0, 'TEXT_SIMPLE');
  static const MsgType TEXT_RICH = MsgType._(1, 'TEXT_RICH');
  static const MsgType TEXT_HTML = MsgType._(2, 'TEXT_HTML');
  static const MsgType PICTURE = MsgType._(3, 'PICTURE');
  static const MsgType PICTURE_LIST = MsgType._(4, 'PICTURE_LIST');
  static const MsgType FILE = MsgType._(5, 'FILE');
  static const MsgType FILE_LIST = MsgType._(6, 'FILE_LIST');
  static const MsgType MEDIA_VOICE = MsgType._(7, 'MEDIA_VOICE');
  static const MsgType MEDIA_VIDEO = MsgType._(8, 'MEDIA_VIDEO');
  static const MsgType EMOTICON = MsgType._(9, 'EMOTICON');
  static const MsgType VIDEO_CALL = MsgType._(10, 'VIDEO_CALL');
  static const MsgType VIDEO_CALL_ANSWER = MsgType._(11, 'VIDEO_CALL_ANSWER');
  static const MsgType VIDEO_CALL_REFUSE = MsgType._(12, 'VIDEO_CALL_REFUSE');
  static const MsgType VIDEO_CALL_STOP = MsgType._(13, 'VIDEO_CALL_STOP');
  static const MsgType VIDEO_CALL_MSG = MsgType._(14, 'VIDEO_CALL_MSG');
  static const MsgType SILENT_PUSH = MsgType._(200, 'SILENT_PUSH');
  static const MsgType RECALL_MESSAGE = MsgType._(201, 'RECALL_MESSAGE');

  static const $core.List<MsgType> values = <MsgType> [
    TEXT_SIMPLE,
    TEXT_RICH,
    TEXT_HTML,
    PICTURE,
    PICTURE_LIST,
    FILE,
    FILE_LIST,
    MEDIA_VOICE,
    MEDIA_VIDEO,
    EMOTICON,
    VIDEO_CALL,
    VIDEO_CALL_ANSWER,
    VIDEO_CALL_REFUSE,
    VIDEO_CALL_STOP,
    VIDEO_CALL_MSG,
    SILENT_PUSH,
    RECALL_MESSAGE,
  ];

  static final $core.Map<$core.int, MsgType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MsgType valueOf($core.int value) => _byValue[value];

  const MsgType._($core.int v, $core.String n) : super(v, n);
}

class MsgMediaType extends $pb.ProtobufEnum {
  static const MsgMediaType VOICE = MsgMediaType._(0, 'VOICE');
  static const MsgMediaType VIDEO = MsgMediaType._(1, 'VIDEO');

  static const $core.List<MsgMediaType> values = <MsgMediaType> [
    VOICE,
    VIDEO,
  ];

  static final $core.Map<$core.int, MsgMediaType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MsgMediaType valueOf($core.int value) => _byValue[value];

  const MsgMediaType._($core.int v, $core.String n) : super(v, n);
}

