import '../database.dart';

class TestTable extends SupabaseTable<TestRow> {
  @override
  String get tableName => 'test';

  @override
  TestRow createRow(Map<String, dynamic> data) => TestRow(data);
}

class TestRow extends SupabaseDataRow {
  TestRow(super.data);

  @override
  SupabaseTable get table => TestTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nom => getField<String>('nom');
  set nom(String? value) => setField<String>('nom', value);
}
