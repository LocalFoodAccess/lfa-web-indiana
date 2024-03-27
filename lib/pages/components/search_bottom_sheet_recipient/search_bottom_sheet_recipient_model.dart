import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'dart:async';
import 'search_bottom_sheet_recipient_widget.dart'
    show SearchBottomSheetRecipientWidget;
import 'package:flutter/material.dart';

class SearchBottomSheetRecipientModel
    extends FlutterFlowModel<SearchBottomSheetRecipientWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
  bool requestCompleted = false;
  String? requestLastUniqueKey;

  /// Query cache managers for this widget.

  final _searchRecipientManager = FutureRequestManager<List<UsersRow>>();
  Future<List<UsersRow>> searchRecipient({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<UsersRow>> Function() requestFn,
  }) =>
      _searchRecipientManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearSearchRecipientCache() => _searchRecipientManager.clear();
  void clearSearchRecipientCacheKey(String? uniqueKey) =>
      _searchRecipientManager.clearRequest(uniqueKey);

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();

    /// Dispose query cache managers for this widget.

    clearSearchRecipientCache();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleted;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
