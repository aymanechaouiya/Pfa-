import '../database.dart';

class UsersRoleTable extends SupabaseTable<UsersRoleRow> {
  @override
  String get tableName => 'users_role';

  @override
  UsersRoleRow createRow(Map<String, dynamic> data) => UsersRoleRow(data);
}

class UsersRoleRow extends SupabaseDataRow {
  UsersRoleRow(super.data);

  @override
  SupabaseTable get table => UsersRoleTable();

  String get uuid => getField<String>('uuid')!;
  set uuid(String value) => setField<String>('uuid', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get rolesId => getField<int>('roles_id');
  set rolesId(int? value) => setField<int>('roles_id', value);
}
