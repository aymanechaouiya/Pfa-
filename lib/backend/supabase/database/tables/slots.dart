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

  PostgresTime? get startTime => getField<PostgresTime>('start_time');
  set startTime(PostgresTime? value) =>
      setField<PostgresTime>('start_time', value);

  PostgresTime? get endTime => getField<PostgresTime>('end_time');
  set endTime(PostgresTime? value) => setField<PostgresTime>('end_time', value);

  int? get idDoctors => getField<int>('id_doctors');
  set idDoctors(int? value) => setField<int>('id_doctors', value);

  bool? get isBooked => getField<bool>('is_booked');
  set isBooked(bool? value) => setField<bool>('is_booked', value);
}
