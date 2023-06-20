import 'package:flutter/material.dart';

class TypographyExampleWidget extends StatelessWidget {
  const TypographyExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Display Large\n디스플레이 라지',
                style: textTheme.displayLarge,
              ),
              const SizedBox(height: 12),
              Text(
                'Display Medium\n디스플레이 미디움',
                style: textTheme.displayMedium,
              ),
              const SizedBox(height: 12),
              Text(
                'Display Small\n디스플레이 스몰',
                style: textTheme.displaySmall,
              ),
              const SizedBox(height: 12),
              Text(
                'Headline Large\n헤드라인 라지',
                style: textTheme.headlineLarge,
              ),
              const SizedBox(height: 12),
              Text(
                'Headline Medium\n헤드라인 미디움',
                style: textTheme.headlineMedium,
              ),
              const SizedBox(height: 12),
              Text(
                'Headline Small\n헤드라인 스몰',
                style: textTheme.headlineSmall,
              ),
              const SizedBox(height: 12),
              Text(
                'Title Large\n타이틀 라지',
                style: textTheme.titleLarge,
              ),
              const SizedBox(height: 12),
              Text(
                'Title Medium\n타이틀 미디움',
                style: textTheme.titleMedium,
              ),
              const SizedBox(height: 12),
              Text(
                'Title Small\n타이틀 스몰',
                style: textTheme.titleSmall,
              ),
              const SizedBox(height: 12),
              Text(
                'Body Large\n바디 라지',
                style: textTheme.bodyLarge,
              ),
              const SizedBox(height: 12),
              Text(
                'Body Medium\n바디 미디움',
                style: textTheme.bodyMedium,
              ),
              const SizedBox(height: 12),
              Text(
                'Body Small\n바디 스몰',
                style: textTheme.bodySmall,
              ),
              const SizedBox(height: 12),
              Text(
                'Label Large\n라벨 라지',
                style: textTheme.labelLarge,
              ),
              const SizedBox(height: 12),
              Text(
                'Label Medium\n라벨 미디움',
                style: textTheme.labelMedium,
              ),
              const SizedBox(height: 12),
              Text(
                'Label Small\n라벨 스몰',
                style: textTheme.labelSmall,
              ),
              const SizedBox(height: 12),
              const Text(
                'Basic Text\n기본 텍스트',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
