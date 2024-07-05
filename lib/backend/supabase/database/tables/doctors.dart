import '../database.dart';

class DoctorsTable extends SupabaseTable<DoctorsRow> {
  @override
  String get tableName => 'doctors';

  @override
  DoctorsRow createRow(Map<String, dynamic> data) => DoctorsRow(data);
}

class DoctorsRow extends SupabaseDataRow {
  DoctorsRow(super.data);

  @override
  SupabaseTable get table => DoctorsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get fullname => getField<String>('fullname');
  set fullname(String? value) => setField<String>('fullname', value);
}
