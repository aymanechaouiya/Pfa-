import '/flutter_flow/flutter_flow_util.dart';
import 'profil_patienr_widget.dart' show ProfilPatienrWidget;
import 'package:flutter/material.dart';

class ProfilPatienrModel extends FlutterFlowModel<ProfilPatienrWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
