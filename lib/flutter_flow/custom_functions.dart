import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/auth/custom_auth/auth_util.dart';

String convertToDataString(String dataFromApi) {
  // convert data from api ex:2024-05-03T17:17:57.000Z to format dd/mm/yyyy 00:00 24h format
  final DateTime dateTime = DateTime.parse(dataFromApi);
  final DateFormat formatter = DateFormat('dd/MM/yyyy HH:mm');
  return formatter.format(dateTime);
}
