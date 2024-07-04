import '../database.dart';

class PublicUsersTable extends SupabaseTable<PublicUsersRow> {
  @override
  String get tableName => 'public_users';

  @override
  PublicUsersRow createRow(Map<String, dynamic> data) => PublicUsersRow(data);
}

class PublicUsersRow extends SupabaseDataRow {
  PublicUsersRow(super.data);

  @override
  SupabaseTable get table => PublicUsersTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);
}
