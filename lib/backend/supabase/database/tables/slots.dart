import '../database.dart';

class SlotsTable extends SupabaseTable<SlotsRow> {
  @override
  String get tableName => 'slots';

  @override
  SlotsRow createRow(Map<String, dynamic> data) => SlotsRow(data);
}

class SlotsRow extends SupabaseDataRow {
  SlotsRow(super.data);

  @override
  SupabaseTable get table => SlotsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get startTime => getField<String>('startTime');
  set startTime(String? value) => setField<String>('startTime', value);

  bool? get isBooked => getField<bool>('isBooked');
  set isBooked(bool? value) => setField<bool>('isBooked', value);

  int? get idDoctor => getField<int>('id_doctor');
  set idDoctor(int? value) => setField<int>('id_doctor', value);
}
