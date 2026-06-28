import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/resource_list.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses>{

  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'OpsMart EKS Cluster',
      amount: 145.0,
      date: DateTime.now(),
      category: Category.compute  
    ),
    Expense(
      title: 'S3 Backup Bucket',
      amount: 12.99,
      date: DateTime.now(),
      category: Category.storage  
    ),
    Expense(
      title: 'RDS PostgreSQL',
      amount: 89.00,
      date: DateTime.now(),
      category: Category.database  
    ),
    Expense(
      title: 'Prometheus/Loki Node',
      amount: 45.0,
      date: DateTime.now(),
      category: Category.mlops  
    ),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cloud Cost Monitor',
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.2),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_box_rounded, color: Colors.cyanAccent),
            onPressed: () {
              // TODO
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: const Color(0xFF1E293B),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.cyan.withOpacity(0.3)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.cyan.withOpacity(0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  )
                ],
              ),
              child: const Center(
                child: Text(
                  '[ AWS Cost Chart Placeholder]',
                  style: TextStyle(color: Colors.cyanAccent, fontSize: 18),
                ),
              ),
            ),
            const SizedBox(height: 24),

            const Text(
              'Active Resources',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 12),

            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF1E293B),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: ResourceList(resources: _registeredExpenses),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}