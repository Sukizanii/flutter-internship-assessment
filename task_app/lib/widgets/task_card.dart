import 'package:flutter/material.dart';
import '../core/colors.dart';
import '../models/tasks.dart';

class TaskCard extends StatelessWidget {
  final Task task;

  const TaskCard({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    final bool isOngoing = task.status == 'ongoing';

    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: kCardBg,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            task.title,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w700,
              color: kTextDark,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            task.description,
            style: const TextStyle(fontSize: 13, color: kTextGrey),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              const Icon(Icons.folder_outlined, size: 15, color: kTextGrey),
              const SizedBox(width: 5),
              Text(
                task.project,
                style: const TextStyle(fontSize: 13, color: kTextGrey),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.access_time_rounded,
                    size: 15,
                    color: kTextGrey,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    task.date,
                    style: const TextStyle(fontSize: 13, color: kTextGrey),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: isOngoing ? kPrimary : kNewTask,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  isOngoing ? 'On going' : 'New task',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: isOngoing ? Colors.white : kNewTaskText,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
