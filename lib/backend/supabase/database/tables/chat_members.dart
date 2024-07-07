import '../database.dart';

class ChatMembersTable extends SupabaseTable<ChatMembersRow> {
  @override
  String get tableName => 'chat_members';

  @override
  ChatMembersRow createRow(Map<String, dynamic> data) => ChatMembersRow(data);
}

class ChatMembersRow extends SupabaseDataRow {
  ChatMembersRow(super.data);

  @override
  SupabaseTable get table => ChatMembersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get chatSender => getField<String>('chat_sender');
  set chatSender(String? value) => setField<String>('chat_sender', value);

  String? get lastMessage => getField<String>('last_message');
  set lastMessage(String? value) => setField<String>('last_message', value);

  DateTime? get lastMessageTime => getField<DateTime>('last_message_time');
  set lastMessageTime(DateTime? value) =>
      setField<DateTime>('last_message_time', value);

  String? get chatReciver => getField<String>('chat_reciver');
  set chatReciver(String? value) => setField<String>('chat_reciver', value);
}
