import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://uskzkkgadiouazzpwdve.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InVza3pra2dhZGlvdWF6enB3ZHZlIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDk0NDMxMzUsImV4cCI6MjAyNTAxOTEzNX0.seXScGQS4owTReiJ_Jbahwk1VU3F5z_uUZQY5uz65G4';

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
