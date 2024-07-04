import '/flutter_flow/flutter_flow_util.dart';
import 'the_start_page_widget.dart' show TheStartPageWidget;
import 'package:flutter/material.dart';

class TheStartPageModel extends FlutterFlowModel<TheStartPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
