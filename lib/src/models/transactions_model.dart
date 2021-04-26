// To parse this JSON data, do
//
//     final transactions = transactionsFromJson(jsonString);

import 'dart:convert';

Transactions transactionsFromJson(String str) => Transactions.fromJson(json.decode(str));

String transactionsToJson(Transactions data) => json.encode(data.toJson());

class Transactions {
    Transactions({
        this.email,
        this.transactions,
    });

    String email;
    List<String> transactions;

    factory Transactions.fromJson(Map<String, dynamic> json) => Transactions(
        email: json["email"],
        transactions: List<String>.from(json["transactions"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "email": email,
        "transactions": List<dynamic>.from(transactions.map((x) => x)),
    };
}
