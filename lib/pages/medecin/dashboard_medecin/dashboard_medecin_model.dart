import '/flutter_flow/flutter_flow_util.dart';
import 'dashboard_medecin_widget.dart' show DashboardMedecinWidget;
import 'package:flutter/material.dart';

class DashboardMedecinModel extends FlutterFlowModel<DashboardMedecinWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
