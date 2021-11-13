import 'package:email_password_login/z_model/items__bd_model.dart';
import 'package:flutter/material.dart';
import 'menu_Item_card.dart';

class Shop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white10,
      child: ListView.builder(
        itemCount: menu.length,
        itemBuilder: (context, int key) {
          return MenuItemCard(index: key);
        },
      ),
    );
  }
}
