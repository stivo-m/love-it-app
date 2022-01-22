import 'package:flutter/material.dart';
import 'package:love_it_app/domain/objects/asset_strings.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.40,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        image: DecorationImage(
          image: AssetImage(Assets.proposalImage),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
