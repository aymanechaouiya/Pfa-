import '../database.dart';

class ZChatMessagesTable extends SupabaseTable<ZChatMessagesRow> {
  @override
  String get tableName => 'z_chat_messages';

  @override
  ZChatMessagesRow createRow(Map<String, dynamic> data) =>
      ZChatMessagesRow(data);
}

class ZChatMessagesRow extends SupabaseDataRow {
  ZChatMessagesRow(super.data);

  @override
  SupabaseTable get table => ZChatMessagesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get chatId => getField<int>('chat_id');
  set chatId(int? value) => setField<int>('chat_id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get message => getField<String>('message');
  set message(String? value) => setField<String>('message', value);
}
