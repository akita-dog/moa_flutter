///
//  Generated code. Do not modify.
//  source: message.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const CallType$json = const {
  '1': 'CallType',
  '2': const [
    const {'1': 'AUTH', '2': 0},
    const {'1': 'ACK_AUTH', '2': 1},
    const {'1': 'HEARTBEAT', '2': 2},
    const {'1': 'ACK_HEARTBEAT', '2': 3},
    const {'1': 'MESSAGE', '2': 4},
    const {'1': 'ACK_MESSAGE', '2': 5},
    const {'1': 'MESSAGE_READ', '2': 6},
    const {'1': 'ACK_MESSAGE_READ', '2': 7},
    const {'1': 'SYSTEM', '2': 8},
  ],
};

const PlatformType$json = const {
  '1': 'PlatformType',
  '2': const [
    const {'1': 'android', '2': 0},
    const {'1': 'iphone', '2': 1},
    const {'1': 'ipad', '2': 2},
    const {'1': 'windows', '2': 3},
    const {'1': 'mac', '2': 4},
  ],
};

const MsgType$json = const {
  '1': 'MsgType',
  '2': const [
    const {'1': 'TEXT_SIMPLE', '2': 0},
    const {'1': 'TEXT_RICH', '2': 1},
    const {'1': 'TEXT_HTML', '2': 2},
    const {'1': 'FILE', '2': 3},
    const {'1': 'FILE_LIST', '2': 4},
    const {'1': 'MEDIA_VOICE', '2': 5},
    const {'1': 'MEDIA_VIDEO', '2': 6},
    const {'1': 'JSON', '2': 7},
  ],
};

const MsgMediaType$json = const {
  '1': 'MsgMediaType',
  '2': const [
    const {'1': 'VOICE', '2': 0},
    const {'1': 'VIDEO', '2': 1},
  ],
};

const Call$json = const {
  '1': 'Call',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.im.CallType', '10': 'type'},
    const {'1': 'content', '3': 2, '4': 1, '5': 12, '10': 'content'},
  ],
};

const Auth$json = const {
  '1': 'Auth',
  '2': const [
    const {'1': 'userid', '3': 1, '4': 1, '5': 12, '10': 'userid'},
    const {'1': 'token', '3': 2, '4': 1, '5': 12, '10': 'token'},
    const {'1': 'platform', '3': 3, '4': 1, '5': 14, '6': '.im.PlatformType', '10': 'platform'},
    const {'1': 'success', '3': 4, '4': 1, '5': 8, '10': 'success'},
  ],
};

const HeartBeat$json = const {
  '1': 'HeartBeat',
  '2': const [
    const {'1': 'timestamp', '3': 1, '4': 1, '5': 5, '10': 'timestamp'},
    const {'1': 'serverReplyTimestamp', '3': 2, '4': 1, '5': 5, '10': 'serverReplyTimestamp'},
  ],
};

const MsgData$json = const {
  '1': 'MsgData',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 12, '10': 'uid'},
    const {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.im.MsgType', '10': 'type'},
    const {'1': 'from', '3': 3, '4': 1, '5': 12, '10': 'from'},
    const {'1': 'to', '3': 4, '4': 1, '5': 12, '10': 'to'},
    const {'1': 'groupid', '3': 5, '4': 1, '5': 12, '10': 'groupid'},
    const {'1': 'content', '3': 6, '4': 1, '5': 12, '10': 'content'},
    const {'1': 'platform', '3': 7, '4': 1, '5': 14, '6': '.im.PlatformType', '10': 'platform'},
    const {'1': 'timestamp', '3': 8, '4': 1, '5': 5, '10': 'timestamp'},
    const {'1': 'extra', '3': 9, '4': 1, '5': 12, '10': 'extra'},
  ],
};

const MsgContentFile$json = const {
  '1': 'MsgContentFile',
  '2': const [
    const {'1': 'fileName', '3': 1, '4': 1, '5': 12, '10': 'fileName'},
    const {'1': 'fileUrl', '3': 2, '4': 1, '5': 12, '10': 'fileUrl'},
    const {'1': 'fileType', '3': 3, '4': 1, '5': 12, '10': 'fileType'},
    const {'1': 'fileSize', '3': 4, '4': 1, '5': 5, '10': 'fileSize'},
    const {'1': 'thumbnailUrl', '3': 5, '4': 1, '5': 12, '10': 'thumbnailUrl'},
  ],
};

const MsgContentMedia$json = const {
  '1': 'MsgContentMedia',
  '2': const [
    const {'1': 'mediaUrl', '3': 1, '4': 1, '5': 12, '10': 'mediaUrl'},
    const {'1': 'mediaType', '3': 2, '4': 1, '5': 14, '6': '.im.MsgMediaType', '10': 'mediaType'},
    const {'1': 'duration', '3': 3, '4': 1, '5': 5, '10': 'duration'},
    const {'1': 'fileSize', '3': 4, '4': 1, '5': 5, '10': 'fileSize'},
    const {'1': 'thumbnailUrl', '3': 5, '4': 1, '5': 12, '10': 'thumbnailUrl'},
  ],
};

const MsgRead$json = const {
  '1': 'MsgRead',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 12, '10': 'uid'},
    const {'1': 'userid', '3': 2, '4': 1, '5': 12, '10': 'userid'},
    const {'1': 'platform', '3': 3, '4': 1, '5': 14, '6': '.im.PlatformType', '10': 'platform'},
    const {'1': 'timestamp', '3': 4, '4': 1, '5': 12, '10': 'timestamp'},
  ],
};

