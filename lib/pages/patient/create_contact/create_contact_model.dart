import '/flutter_flow/flutter_flow_util.dart';
import 'create_contact_widget.dart' show CreateContactWidget;
import 'package:flutter/material.dart';

class CreateContactModel extends FlutterFlowModel<CreateContactWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
