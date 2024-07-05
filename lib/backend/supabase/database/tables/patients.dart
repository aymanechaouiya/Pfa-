import '../database.dart';

class PatientsTable extends SupabaseTable<PatientsRow> {
  @override
  String get tableName => 'patients';

  @override
  PatientsRow createRow(Map<String, dynamic> data) => PatientsRow(data);
}

class PatientsRow extends SupabaseDataRow {
  PatientsRow(super.data);

  @override
  SupabaseTable get table => PatientsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get fullname => getField<String>('fullname');
  set fullname(String? value) => setField<String>('fullname', value);
}
