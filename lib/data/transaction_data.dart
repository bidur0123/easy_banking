import 'package:flutter/material.dart';

class TransactionModel {
  String  name;
  String  avatar;
  String  currentBalance;
  String  month;
  String  changePercentageIndicator;
  String  changePercentage;
  Color   color;

  TransactionModel({
    required this.name,
    required this.avatar,
    required this.currentBalance,
    required this.month,
    required this.changePercentageIndicator,
    required this.changePercentage,
    required this.color,
  });
}

List<TransactionModel> myTransactions = [
  TransactionModel(
    avatar: "assets/icons/avatar1.png",
    currentBalance: "\Rs 5482",
    changePercentage: "0.41%",
    changePercentageIndicator: "up",
    month: "Jan",
    name: "Bidur Gupta",
    color: Colors.green.shade100,
  ),
  TransactionModel(
    avatar: "assets/icons/avatar2.png",
    currentBalance: "\Rs 4252",
    changePercentageIndicator: "down",
    changePercentage: "4.54%",
    month: "Mar",
    name: "Harsh Gupta",
    color: Colors.orange.shade100,
  ),
  TransactionModel(
    avatar: "assets/icons/avatar3.png",
    currentBalance: "\Rs 4052",
    changePercentage: "1.27%",
    changePercentageIndicator: "down",
    month: "Mar",
    name: "Ayush Tripathi",
    color: Colors.red.shade100,
  ),
  TransactionModel(
    avatar: "assets/icons/avatar4.png",
    currentBalance: "\Rs 5052",
    changePercentageIndicator: "up",
    changePercentage: "3.09%",
    month: "Mar",
    name: "Abhishek ",
    color: Colors.deepPurple.shade100,
  ),
  TransactionModel(
    avatar: "assets/icons/avatar1.png",
    currentBalance: "\Rs 5482",
    changePercentage: "0.41%",
    changePercentageIndicator: "up",
    month: "Jan",
    name: "Aditya Singh",
    color: Colors.green.shade100,
  ),
  TransactionModel(
    avatar: "assets/icons/avatar2.png",
    currentBalance: "\Rs 4252",
    changePercentageIndicator: "down",
    changePercentage: "4.54%",
    month: "Mar",
    name: "Nitesh Singh",
    color: Colors.orange.shade100,
  ),
];
