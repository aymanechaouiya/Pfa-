import '../database.dart';

class MaladiesTable extends SupabaseTable<MaladiesRow> {
  @override
  String get tableName => 'maladies';

  @override
  MaladiesRow createRow(Map<String, dynamic> data) => MaladiesRow(data);
}

class MaladiesRow extends SupabaseDataRow {
  MaladiesRow(super.data);

  @override
  SupabaseTable get table => MaladiesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get prenom => getField<String>('prenom')!;
  set prenom(String value) => setField<String>('prenom', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get password => getField<String>('password');
  set password(String? value) => setField<String>('password', value);

  String? get sanguine => getField<String>('sanguine');
  set sanguine(String? value) => setField<String>('sanguine', value);

  int? get age => getField<int>('age');
  set age(int? value) => setField<int>('age', value);

  int? get tel => getField<int>('tel');
  set tel(int? value) => setField<int>('tel', value);

  String? get userMedid => getField<String>('userMedid');
  set userMedid(String? value) => setField<String>('userMedid', value);

  String? get motif => getField<String>('motif');
  set motif(String? value) => setField<String>('motif', value);

  String? get sympto => getField<String>('sympto');
  set sympto(String? value) => setField<String>('sympto', value);
}
