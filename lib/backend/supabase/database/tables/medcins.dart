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

  String? get availiblity => getField<String>('availiblity');
  set availiblity(String? value) => setField<String>('availiblity', value);

  String? get pic => getField<String>('pic');
  set pic(String? value) => setField<String>('pic', value);

  String? get descreption => getField<String>('descreption');
  set descreption(String? value) => setField<String>('descreption', value);

  String? get userIs => getField<String>('user_is');
  set userIs(String? value) => setField<String>('user_is', value);

  PostgresTime? get temp => getField<PostgresTime>('temp');
  set temp(PostgresTime? value) => setField<PostgresTime>('temp', value);

  String? get nomPatient => getField<String>('nom patient');
  set nomPatient(String? value) => setField<String>('nom patient', value);

  String? get descreptions => getField<String>('descreptions');
  set descreptions(String? value) => setField<String>('descreptions', value);
}
