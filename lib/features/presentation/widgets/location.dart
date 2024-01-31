import 'package:flutter/material.dart';
import 'package:tapbarr_exemple/internal/helpers/text_helper.dart';

class Location extends StatelessWidget {
  const Location({
    super.key,
    required this.phoneNumber,
    required this.location,
    required this.city,
    required this.email,
    required this.age,
  });

  final String? phoneNumber;
  final String? location;
  final String? city;
  final String? email;
  final int? age;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Phone number:",
              style: TextHelper.w600s16,
            ),
            Text(
              "$phoneNumber",
              style: TextHelper.w600s16,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Location:",
              style: TextHelper.w600s16,
            ),
            Text(
              "$location",
              style: TextHelper.w600s16,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "City:",
              style: TextHelper.w600s16,
            ),
            Text(
              "$city",
              style: TextHelper.w600s16,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Email:",
              style: TextHelper.w600s16,
            ),
            Text(
              "$email",
              style: TextHelper.w600s16,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Age:",
              style: TextHelper.w600s16,
            ),
            Text(
              "$age",
              style: TextHelper.w600s16,
            ),
          ],
        ),
      ],
    );
  }
}
