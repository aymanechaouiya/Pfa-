import '/flutter_flow/flutter_flow_util.dart';
import 'chat_page_copy_widget.dart' show ChatPageCopyWidget;
import 'package:flutter/material.dart';

class ChatPageCopyModel extends FlutterFlowModel<ChatPageCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
