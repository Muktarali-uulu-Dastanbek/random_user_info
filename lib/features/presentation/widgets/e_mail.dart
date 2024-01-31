import 'package:flutter/material.dart';
import 'package:tapbarr_exemple/internal/helpers/text_helper.dart';

class E_mail extends StatelessWidget {
  const E_mail({
    super.key,
    required this.firstName,
    required this.email,
    required this.userName,
    required this.phoneNumber,
    required this.cell,
    required this.registred,
  });

  final String? firstName;
  final String? email;
  final String? userName;
  final String? phoneNumber;
  final String? cell;
  final DateTime? registred;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Name:",
              style: TextHelper.w600s16,
            ),
            Text(
              "$firstName",
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
              "User name:",
              style: TextHelper.w600s16,
            ),
            Text(
              "$userName",
              style: TextHelper.w600s16,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Phone:",
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
              "Cell:",
              style: TextHelper.w600s16,
            ),
            Text(
              "$cell",
              style: TextHelper.w600s16,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Registred:",
              style: TextHelper.w600s16,
            ),
            Text(
              "$registred",
              style: TextHelper.w600s16,
            ),
          ],
        ),
      ],
    );
  }
}
