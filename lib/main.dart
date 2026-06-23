import 'package:flutter/material.dart';
import 'package:expense_tracker/expenses.dart';

void main(){
  runApp(
    MaterialApp(
      // Dark Mode
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0F172A),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1E293B),
          foregroundColor: Colors.white,
        ),
      ),
      
      home: const Expenses()
    ),
  );
}