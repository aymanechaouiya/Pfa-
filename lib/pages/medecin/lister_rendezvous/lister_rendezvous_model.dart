import '/flutter_flow/flutter_flow_util.dart';
import 'lister_rendezvous_widget.dart' show ListerRendezvousWidget;
import 'package:flutter/material.dart';

class ListerRendezvousModel extends FlutterFlowModel<ListerRendezvousWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
