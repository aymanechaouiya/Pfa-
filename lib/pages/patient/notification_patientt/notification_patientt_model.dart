import '/flutter_flow/flutter_flow_util.dart';
import 'notification_patientt_widget.dart' show NotificationPatienttWidget;
import 'package:flutter/material.dart';

class NotificationPatienttModel
    extends FlutterFlowModel<NotificationPatienttWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
