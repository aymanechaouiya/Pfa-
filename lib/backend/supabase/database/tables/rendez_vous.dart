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

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime? get temp => getField<DateTime>('temp');
  set temp(DateTime? value) => setField<DateTime>('temp', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  int? get medcines => getField<int>('medcines');
  set medcines(int? value) => setField<int>('medcines', value);

  String? get patientNom => getField<String>('patient nom');
  set patientNom(String? value) => setField<String>('patient nom', value);
}
