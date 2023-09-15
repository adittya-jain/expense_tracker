import 'package:expense_tracker/bar_graph/individual_bar.dart';

class BarData {
  final double sunAmount;
  final double monAmount;
  final double tuesAmount;
  final double wedAmount;
  final double thurAmount;
  final double friAmount;
  final double satAmount;

  BarData({
    required this.sunAmount,
    required this.monAmount,
    required this.tuesAmount,
    required this.wedAmount,
    required this.thurAmount,
    required this.friAmount,
    required this.satAmount,
  });

  List<InvidualBar> barData = [];

  void initializeBarData() {
    barData = [
      InvidualBar(x: 0, y: sunAmount),
      InvidualBar(x: 1, y: monAmount),
      InvidualBar(x: 2, y: tuesAmount),
      InvidualBar(x: 3, y: wedAmount),
      InvidualBar(x: 4, y: thurAmount),
      InvidualBar(x: 5, y: friAmount),
      InvidualBar(x: 6, y: satAmount),
    ];
  }
}
