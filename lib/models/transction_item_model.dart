class TransactionItemModel{
    final String title;
    final String date;
    final bool isDepit;
    final String price;

  TransactionItemModel({required this.title, required this.date, required this.isDepit, required this.price});
}
List <TransactionItemModel>transctionItemList=[
  TransactionItemModel(title: "Cash Withdrawal", date: "13 Apr, 2022 ", isDepit: true, price: r"$20,129"),
  TransactionItemModel(title: "Landing Page project", date: "13 Apr, 2022 at 3:30 PM", isDepit: false, price: r"$2,000"),
  TransactionItemModel(title: "Juni Mobile App project", date: "13 Apr, 2022 at 3:30 PM", isDepit:false, price: r"$2,129"),
  TransactionItemModel(title: "Cash Withdrawal", date: "13 Apr, 2022 ", isDepit: false, price: r"$2,000"),
];