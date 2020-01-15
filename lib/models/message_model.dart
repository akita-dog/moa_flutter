class MessageModel {
  final String msgFrom;
  final String msgTo;
  final String msgContent;
  final DateTime receiveTime;

  MessageModel({
    this.msgFrom,
    this.msgTo,
    this.msgContent,
    this.receiveTime
  });
}

List<MessageModel> messages = [
  MessageModel(
    msgFrom: "akita",
    msgTo: "test",
    msgContent: "你看看长消息，你看看长消息，你看看长消息，你看看长消息，你看看长消息，你看看长消息，"
        "你看看长消息，你看看长消息，你看看长消息，你看看长消息，你看看长消息，你看看长消息，你看看长消息，",
    receiveTime: DateTime.parse("2012-02-27 13:27:00")
  ),
  MessageModel(
      msgFrom: "wang",
      msgTo: "test",
      msgContent: "測試發送",
      receiveTime: DateTime.parse("2012-02-27 13:27:00")
  ),
  MessageModel(
      msgFrom: "akita",
      msgTo: "test",
      msgContent: "測試發送",
      receiveTime: DateTime.parse("2012-02-27 13:27:00")
  ),
  MessageModel(
      msgFrom: "wang",
      msgTo: "test",
      msgContent: "測試發送",
      receiveTime: DateTime.parse("2012-02-27 13:27:00")
  ),
  MessageModel(
      msgFrom: "akita",
      msgTo: "test",
      msgContent: "測試發送",
      receiveTime: DateTime.parse("2012-02-27 13:27:00")
  ),
  MessageModel(
      msgFrom: "wang",
      msgTo: "test",
      msgContent: "測試發送",
      receiveTime: DateTime.parse("2012-02-27 13:27:00")
  ),
];