import 'package:flutter/material.dart';

class ActiveOrderCard extends StatelessWidget {
  const ActiveOrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 6,
      ),
      decoration: BoxDecoration(
          color: theme.colorScheme.onTertiary,
          border: Border.all(color: theme.colorScheme.onSurface),
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          )),
      child: Column(
        children: [
          const SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Запись в автосервис',
                    style: theme.textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Flexible(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 1.4,
                      child: Text(
                        '9 января 144, стр 19',
                        // style: theme.textTheme.bodyLarge,
                      ),
                    ),
                  ),
                  Text(
                    '14:00',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '18',
                    style: theme.textTheme.displayLarge?.copyWith(
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    'ВТ',
                    style: theme.textTheme.bodySmall?.copyWith(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'Отменить',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.error,
                  ),
                ),
              ),
              const SizedBox(width: 90),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Перенести',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
