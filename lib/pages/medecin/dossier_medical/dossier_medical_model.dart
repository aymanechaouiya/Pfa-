import '/flutter_flow/flutter_flow_util.dart';
import 'dossier_medical_widget.dart' show DossierMedicalWidget;
import 'package:flutter/material.dart';

class DossierMedicalModel extends FlutterFlowModel<DossierMedicalWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
