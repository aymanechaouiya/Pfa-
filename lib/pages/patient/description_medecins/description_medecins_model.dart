import '/flutter_flow/flutter_flow_util.dart';
import 'description_medecins_widget.dart' show DescriptionMedecinsWidget;
import 'package:flutter/material.dart';

class DescriptionMedecinsModel
    extends FlutterFlowModel<DescriptionMedecinsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
