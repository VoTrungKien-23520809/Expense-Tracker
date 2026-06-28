import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class ResourceList extends StatelessWidget {
  const ResourceList({super.key, required this.resources});

  final List<Expense> resources;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: resources.length,
      itemBuilder: (ctx, index) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Color(0xFF1E293B).withOpacity(0.6),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.cyanAccent, width: 0.15),
          ),
          child: Text(
            resources[index].title,
            style: const TextStyle(
              color: Colors.cyanAccent,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            )
          )
        );
      },
    );
  }
}