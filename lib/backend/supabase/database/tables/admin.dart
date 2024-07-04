import '../database.dart';

class AdminTable extends SupabaseTable<AdminRow> {
  @override
  String get tableName => 'admin';

  @override
  AdminRow createRow(Map<String, dynamic> data) => AdminRow(data);
}

class AdminRow extends SupabaseDataRow {
  AdminRow(super.data);

  @override
  SupabaseTable get table => AdminTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);
}
