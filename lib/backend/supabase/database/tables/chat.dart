import '../database.dart';

class ChatTable extends SupabaseTable<ChatRow> {
  @override
  String get tableName => 'chat';

  @override
  ChatRow createRow(Map<String, dynamic> data) => ChatRow(data);
}

class ChatRow extends SupabaseDataRow {
  ChatRow(super.data);

  @override
  SupabaseTable get table => ChatTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get user1 => getField<String>('user_1');
  set user1(String? value) => setField<String>('user_1', value);

  String? get user2 => getField<String>('user_2');
  set user2(String? value) => setField<String>('user_2', value);

  List<String> get users => getListField<String>('users');
  set users(List<String>? value) => setListField<String>('users', value);

  String? get lastMessages => getField<String>('last_messages');
  set lastMessages(String? value) => setField<String>('last_messages', value);
}
