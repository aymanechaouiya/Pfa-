import '/flutter_flow/flutter_flow_util.dart';
import 'dashboard_admin_widget.dart' show DashboardAdminWidget;
import 'package:flutter/material.dart';

class DashboardAdminModel extends FlutterFlowModel<DashboardAdminWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
