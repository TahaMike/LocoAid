import 'package:flutter/material.dart';
import '../../../../core/theme/app_theme.dart';

class CustomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTabSelected;

  const CustomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTabSelected,
  });

  final List<IconData> _icons = const [
    Icons.home_rounded,
    Icons.calendar_month_rounded,
    Icons.person_rounded,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(_icons.length, (index) {
          final isSelected = index == currentIndex;
          return GestureDetector(
            onTap: () => onTabSelected(index),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOut,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSelected ? AppTheme.primaryColor : Colors.transparent,
              ),
              child: Icon(
                _icons[index],
                color: isSelected ? Colors.white : Colors.black54,
                size: isSelected ? 26 : 24,
              ),
            ),
          );
        }),
      ),
    );
  }
}
