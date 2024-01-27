class PaySlipModel {
  final String title;
  final String date;
  final String time;
  final String icon;
  final String amount;
  final String downloadUrl;

  PaySlipModel(
      {required this.title,
      required this.date,
      required this.time,
      required this.icon,
      required this.amount,
      required this.downloadUrl});
}
