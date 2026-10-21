import 'package:flutter/material.dart';

class EmptyState extends StatelessWidget{
  final String message;

  const EmptyState({
    super.key,
    this.message = 'Você não possui tarefas.\nAdicione uma tarefa para começar.',
  });

  @override
  Widget build(BuildContext context){
    final ColorScheme = Theme.of(context).colorScheme;
    final TextTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            size: 12,
            color: ColorScheme.primary,
          ),
          const SizedBox(height: 16),
          Text(
            'Tudo organizado!',
            style: TextTheme.titleLarge?.copyWith(
              color: ColorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            message,
            textAlign: TextAlign.center,
            style: TextTheme.bodyMedium?.copyWith(
              color: ColorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}