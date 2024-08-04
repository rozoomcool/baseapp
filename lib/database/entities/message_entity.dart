import 'package:isar/isar.dart';

part 'message_entity.g.dart';

@collection
class MessageEntity {
  Id id = Isar.autoIncrement; // you can also use id = null to auto increment

  String? recipient;
  String? content;
  String? sender;
  String? createdAt;
}
