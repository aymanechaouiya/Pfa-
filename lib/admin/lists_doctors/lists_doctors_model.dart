import '/flutter_flow/flutter_flow_util.dart';
import 'lists_doctors_widget.dart' show ListsDoctorsWidget;
import 'package:flutter/material.dart';

class ListsDoctorsModel extends FlutterFlowModel<ListsDoctorsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
