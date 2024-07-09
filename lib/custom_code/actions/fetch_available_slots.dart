// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:supabase_flutter/supabase_flutter.dart';

Future<List<dynamic>> fetchAvailableSlots(String doctorId) async {
  final response = await Supabase.instance.client
      .from('slots')
      .select()
      .eq('isBooked', false)
      .eq('doctor_id', doctorId)
      .execute();

  if (response.status != 200) {
    print('Error fetching available slots: ${response.status}');
    return [];
  } else {
    return response.data as List<dynamic>;
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
