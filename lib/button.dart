import 'package:flutter/material.dart';

class UpgradeButton extends StatelessWidget {
  const UpgradeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 216,
      height: 48,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            spreadRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          elevation: 0,
        ),
        onPressed: () {},
        child: Row(
          mainAxisSize: MainAxisSize.min, // Prevents extra space issues
          children: [
            Icon(Icons.workspace_premium, color: Colors.black),
            SizedBox(width: 8), // Space between icon and text
            Text(
              "Upgrade",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            SizedBox(width: 24), // Extra space before arrow
            Icon(Icons.arrow_forward, color: Colors.black),
          ],
        ),
      ),
    ); // This bracket properly closes the Container widget
  }
}
