import '/flutter_flow/flutter_flow_util.dart';
import 'create_contact_doc_widget.dart' show CreateContactDocWidget;
import 'package:flutter/material.dart';

class CreateContactDocModel extends FlutterFlowModel<CreateContactDocWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
