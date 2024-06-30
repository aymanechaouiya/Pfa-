import '/flutter_flow/flutter_flow_util.dart';
import 'list_ordonance_widget.dart' show ListOrdonanceWidget;
import 'package:flutter/material.dart';

class ListOrdonanceModel extends FlutterFlowModel<ListOrdonanceWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
