import '/flutter_flow/flutter_flow_util.dart';
import 'profile_med_widget.dart' show ProfileMedWidget;
import 'package:flutter/material.dart';

class ProfileMedModel extends FlutterFlowModel<ProfileMedWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
