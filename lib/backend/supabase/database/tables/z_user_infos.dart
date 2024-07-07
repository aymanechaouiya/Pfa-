import '../database.dart';

class ZUserInfosTable extends SupabaseTable<ZUserInfosRow> {
  @override
  String get tableName => 'z_user_infos';

  @override
  ZUserInfosRow createRow(Map<String, dynamic> data) => ZUserInfosRow(data);
}

class ZUserInfosRow extends SupabaseDataRow {
  ZUserInfosRow(super.data);

  @override
  SupabaseTable get table => ZUserInfosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);
}
