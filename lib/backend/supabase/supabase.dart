import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://dzpyohvzxhxlymcdzvzs.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImR6cHlvaHZ6eGh4bHltY2R6dnpzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjAwMzM4MzksImV4cCI6MjAzNTYwOTgzOX0.Dkqxn10HYoxEdvFws-68VLkvtfA_XlEE6xnKDcbOh3Y';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
