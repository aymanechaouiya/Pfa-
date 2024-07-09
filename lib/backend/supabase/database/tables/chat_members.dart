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

  String? get chatName => getField<String>('chat_name');
  set chatName(String? value) => setField<String>('chat_name', value);

  String? get chatDesc => getField<String>('chat_desc');
  set chatDesc(String? value) => setField<String>('chat_desc', value);

  List<String> get chatMembers => getListField<String>('chat_members');
  set chatMembers(List<String>? value) =>
      setListField<String>('chat_members', value);

  String? get lastMessage => getField<String>('last_message');
  set lastMessage(String? value) => setField<String>('last_message', value);

  DateTime? get lastMessageTime => getField<DateTime>('last_message_time');
  set lastMessageTime(DateTime? value) =>
      setField<DateTime>('last_message_time', value);

  String? get chatImg => getField<String>('chat_img');
  set chatImg(String? value) => setField<String>('chat_img', value);
}
