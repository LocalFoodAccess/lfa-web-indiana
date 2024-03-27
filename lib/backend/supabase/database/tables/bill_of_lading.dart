import '../database.dart';

class BillOfLadingTable extends SupabaseTable<BillOfLadingRow> {
  @override
  String get tableName => 'bill_of_lading';

  @override
  BillOfLadingRow createRow(Map<String, dynamic> data) => BillOfLadingRow(data);
}

class BillOfLadingRow extends SupabaseDataRow {
  BillOfLadingRow(super.data);

  @override
  SupabaseTable get table => BillOfLadingTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get transporter => getField<String>('transporter');
  set transporter(String? value) => setField<String>('transporter', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get sender => getField<String>('sender');
  set sender(String? value) => setField<String>('sender', value);

  String? get recipient => getField<String>('recipient');
  set recipient(String? value) => setField<String>('recipient', value);

  bool? get markedPaid => getField<bool>('marked_paid');
  set markedPaid(bool? value) => setField<bool>('marked_paid', value);

  bool? get markedReceived => getField<bool>('marked_received');
  set markedReceived(bool? value) => setField<bool>('marked_received', value);

  List<String> get products => getListField<String>('products');
  set products(List<String>? value) => setListField<String>('products', value);

  String? get invoiceUrl => getField<String>('invoice_url');
  set invoiceUrl(String? value) => setField<String>('invoice_url', value);
}
