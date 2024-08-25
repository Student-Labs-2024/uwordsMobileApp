import 'package:flutter/material.dart';
import 'package:uwords/features/subscription/subscription_styles.dart';
import 'package:uwords/theme/app_colors.dart';

class TariffCard extends StatelessWidget {
  final String name;
  final String priceStr;
  final String? freePeriodStr;
  final String comment;
  final int? discount;
  final bool isSelected;
  final Function(int index) onTap;
  final int index;

  const TariffCard({
    super.key,
    required this.name,
    required this.priceStr,
    required this.freePeriodStr,
    required this.comment,
    required this.discount,
    required this.isSelected,
    required this.onTap,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(index);
      },
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Stack(
          children:[ Padding(
            padding: const EdgeInsets.all(15.0),
            child: Stack(children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: SubscriptionsStyles.name
                        ),
                        const SizedBox(height: 8),
                        Text(
                          priceStr,
                          style: SubscriptionsStyles.price
                        ),
                        const SizedBox(height: 4),
                        if (freePeriodStr != null)
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xFFE9F2FF),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              freePeriodStr!,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF3498DB),
                              ),
                            ),
                          ),
                        const SizedBox(height: 4),
                        Text(
                          comment,
                          style: SubscriptionsStyles.comment
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.topRight,
                child: SizedBox(
                  width: 40,
                  height: 40,
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      SizedBox(
                        width: 30,
                        height: 30,
                        child: Center(
                          child: Icon(
                            isSelected ? Icons.check_circle : Icons.circle,
                            color: isSelected ? Colors.blue : Colors.grey,
                            size: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
          if (discount != null)
            Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                width: 60,
                height: 34,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15)),
                    gradient: AppColors.backgroundOnboardingGradient,
                  ),
                  child: Center(
                    child: Text("-$discount%", style: SubscriptionsStyles.discount,),
                  ),
                ),
              ),
            )
        ]),
      ),
    );
  }
}
