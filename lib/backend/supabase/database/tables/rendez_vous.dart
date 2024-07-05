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

  DateTime? get temp => getField<DateTime>('temp');
  set temp(DateTime? value) => setField<DateTime>('temp', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  String? get nomMedcines => getField<String>('nom medcines');
  set nomMedcines(String? value) => setField<String>('nom medcines', value);

  String? get picMed => getField<String>('pic_med');
  set picMed(String? value) => setField<String>('pic_med', value);

  String? get emailPatient => getField<String>('email_patient');
  set emailPatient(String? value) => setField<String>('email_patient', value);
}
