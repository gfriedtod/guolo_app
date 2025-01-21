import 'package:flutter/material.dart';

import '../material/environement_path.dart';

class Profile extends StatelessWidget {
  const Profile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            '${EnvironementPath.images}user.jpg',
          ),
        ),
      ),
      height: 40,
      width: 40,
    );
  }
}
