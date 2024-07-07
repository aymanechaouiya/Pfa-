import '/flutter_flow/flutter_flow_util.dart';
import 'med_profile_widget.dart' show MedProfileWidget;
import 'package:flutter/material.dart';

class MedProfileModel extends FlutterFlowModel<MedProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
