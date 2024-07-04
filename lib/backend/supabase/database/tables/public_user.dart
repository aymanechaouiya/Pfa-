import '../database.dart';

class PublicUserTable extends SupabaseTable<PublicUserRow> {
  @override
  String get tableName => 'public_user';

  @override
  PublicUserRow createRow(Map<String, dynamic> data) => PublicUserRow(data);
}

class PublicUserRow extends SupabaseDataRow {
  PublicUserRow(super.data);

  @override
  SupabaseTable get table => PublicUserTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get encryptedPassword => getField<String>('encrypted_password');
  set encryptedPassword(String? value) =>
      setField<String>('encrypted_password', value);
}
