// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<dynamic>> fetchAvailableSlots() async {
  const SUPABASE_URL = 'https://dzpyohvzxhxlymcdzvzs.supabase.co';
  const SUPABASE_KEY =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImR6cHlvaHZ6eGh4bHltY2R6dnpzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjAwMzM4MzksImV4cCI6MjAzNTYwOTgzOX0.Dkqxn10HYoxEdvFws-68VLkvtfA_XlEE6xnKDcbOh3Y';
  const SUPABASE_AUTH_KEY =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImR6cHlvaHZ6eGh4bHltY2R6dnpzIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcyMDAzMzgzOSwiZXhwIjoyMDM1NjA5ODM5fQ.-7hmtL1crT75c-fnc7MhMTlegC40nc42R4V1pF-JJGY';

  final response = await http.get(
    Uri.parse('https://dzpyohvzxhxlymcdzvzs.supabase.co&is_booked=eq.false'),
    headers: {
      'apikey': SUPABASE_KEY,
      'Authorization': 'Bearer $SUPABASE_AUTH_KEY',
    },
  );

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body) as List;
    return data;
  } else {
    throw Exception('Failed to load slots');
  }
}

Future<List<dynamic>> fetchAvailableSlotsAction(BuildContext context) async {
  try {
    return await fetchAvailableSlots();
  } catch (e) {
    print('Error fetching available slots: $e');
    return [];
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
