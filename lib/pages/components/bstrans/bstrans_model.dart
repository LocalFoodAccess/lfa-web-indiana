import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'bstrans_widget.dart' show BstransWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class BstransModel extends FlutterFlowModel<BstransWidget> {
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

  final _searchTransporterManager = FutureRequestManager<List<UsersRow>>();
  Future<List<UsersRow>> searchTransporter({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<UsersRow>> Function() requestFn,
  }) =>
      _searchTransporterManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearSearchTransporterCache() => _searchTransporterManager.clear();
  void clearSearchTransporterCacheKey(String? uniqueKey) =>
      _searchTransporterManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();

    /// Dispose query cache managers for this widget.

    clearSearchTransporterCache();
  }

  /// Additional helper methods.
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