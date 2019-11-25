import 'dart:core';
import 'package:flutter/material.dart';

class CardDetails {
  String cardNumber;
  String cardExpiry;
  String bankName;
  String cardholder;
  String cardType;
  var accentColor;
  var backgroundColor;
  var logo;
  var bankLogo;

  CardDetails(
      {this.cardNumber,
      this.cardExpiry,
      this.bankName,
      this.cardholder,
      this.cardType,
      this.backgroundColor,
      this.logo,
      this.accentColor,
      this.bankLogo});
}

List<CardDetails> carddetails = [
  CardDetails(
      cardNumber: "1234 2345 5678 4567",
      cardExpiry: "23/10",
      cardholder: "PRANJAL SRIVASTAVA",
      cardType: "RuPay",
      logo: Icons.blur_circular,
      bankName: "INDIAN BANK",
      backgroundColor: Colors.black,
      accentColor: Colors.white,
      bankLogo: Icons.refresh),
  CardDetails(
      cardNumber: "1234 2345 5678 4567",
      cardExpiry: "23/10",
      cardholder: "PRANJAL SRIVASTAVA",
      cardType: "RuPay",
      logo: Icons.blur_circular,
      bankName: "INDIAN BANK",
      backgroundColor: Colors.amberAccent,
      bankLogo: Icons.account_balance),
  CardDetails(
      cardNumber: "1234 2345 5678 4567",
      cardExpiry: "23/10",
      cardholder: "PRANJAL SRIVASTAVA",
      cardType: "RuPay",
      logo: Icons.blur_circular,
      bankName: "INDIAN BANK",
      backgroundColor: Colors.lightBlue,
      accentColor: Colors.amber,
      bankLogo: Icons.add_to_queue),
];
