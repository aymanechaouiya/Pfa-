import '../database.dart';

class RendezVousTable extends SupabaseTable<RendezVousRow> {
  @override
  String get tableName => 'rendez_vous';

  @override
  RendezVousRow createRow(Map<String, dynamic> data) => RendezVousRow(data);
}

class RendezVousRow extends SupabaseDataRow {
  RendezVousRow(super.data);

  @override
  SupabaseTable get table => RendezVousTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get dates => getField<DateTime>('dates');
  set dates(DateTime? value) => setField<DateTime>('dates', value);

  PostgresTime? get temps => getField<PostgresTime>('temps');
  set temps(PostgresTime? value) => setField<PostgresTime>('temps', value);

  String? get nomMedcines => getField<String>('nom medcines');
  set nomMedcines(String? value) => setField<String>('nom medcines', value);

  String? get picMed => getField<String>('pic_med');
  set picMed(String? value) => setField<String>('pic_med', value);

  String? get emailPatient => getField<String>('email_patient');
  set emailPatient(String? value) => setField<String>('email_patient', value);

  int? get idMed => getField<int>('id_med');
  set idMed(int? value) => setField<int>('id_med', value);
}
