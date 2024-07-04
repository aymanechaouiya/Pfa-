import '/flutter_flow/flutter_flow_util.dart';
import 'liste_ordonnances_widget.dart' show ListeOrdonnancesWidget;
import 'package:flutter/material.dart';

class ListeOrdonnancesModel extends FlutterFlowModel<ListeOrdonnancesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
