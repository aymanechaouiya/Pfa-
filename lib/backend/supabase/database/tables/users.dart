import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(super.data);

  @override
  SupabaseTable get table => UsersTable();

  String get uuid => getField<String>('uuid')!;
  set uuid(String value) => setField<String>('uuid', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get pics => getField<String>('pics');
  set pics(String? value) => setField<String>('pics', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);

  String? get role => getField<String>('role');
  set role(String? value) => setField<String>('role', value);
}
