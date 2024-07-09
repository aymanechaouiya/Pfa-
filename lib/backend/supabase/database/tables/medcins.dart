import '../database.dart';

class MedcinsTable extends SupabaseTable<MedcinsRow> {
  @override
  String get tableName => 'medcins';

  @override
  MedcinsRow createRow(Map<String, dynamic> data) => MedcinsRow(data);
}

class MedcinsRow extends SupabaseDataRow {
  MedcinsRow(super.data);

  @override
  SupabaseTable get table => MedcinsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get fullName => getField<String>('full_name');
  set fullName(String? value) => setField<String>('full_name', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get password => getField<String>('password');
  set password(String? value) => setField<String>('password', value);

  String? get specialite => getField<String>('specialité');
  set specialite(String? value) => setField<String>('specialité', value);

  int? get tel => getField<int>('tel');
  set tel(int? value) => setField<int>('tel', value);

  String? get pic => getField<String>('pic');
  set pic(String? value) => setField<String>('pic', value);

  String? get descreption => getField<String>('descreption');
  set descreption(String? value) => setField<String>('descreption', value);

  String? get temp => getField<String>('temp');
  set temp(String? value) => setField<String>('temp', value);

  String? get descreptionsRendezVouz =>
      getField<String>('descreptions_rendezVouz');
  set descreptionsRendezVouz(String? value) =>
      setField<String>('descreptions_rendezVouz', value);

  String? get patientName => getField<String>('patient_name');
  set patientName(String? value) => setField<String>('patient_name', value);

  String? get doctorUid => getField<String>('doctor_uid');
  set doctorUid(String? value) => setField<String>('doctor_uid', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  String? get picsPatient => getField<String>('pics_patient');
  set picsPatient(String? value) => setField<String>('pics_patient', value);
}
