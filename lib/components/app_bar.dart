import 'package:flutter/material.dart';
import 'package:wise_meal/components/link_text.dart';
import 'package:wise_meal/utils/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showMenuIcon;

  const CustomAppBar({
    super.key,
    required this.title,
    this.showMenuIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    // Determine if the screen width is small (e.g., less than 600 pixels)
    bool isSmallScreen = MediaQuery.of(context).size.width < 600;

    return AppBar(
      toolbarHeight: 80.0,
      backgroundColor: Colors.white,
      leading: showMenuIcon
          ? IconButton(
              icon: const Icon(Icons.menu, color: AppColors.linksColor),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            )
          : null,
      title: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width *
              0.8, // 80% of the screen width
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Logo
              const Text(
                'Wise',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: AppColors.logoColor,
                ),
              ),
              // Conditional display of Links
              if (!showMenuIcon)
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    HoverTextButton(
                      text: 'About',
                      onPressed: () {},
                    ),
                    const SizedBox(width: 60),
                    HoverTextButton(
                      text: 'How to use',
                      onPressed: () {},
                    ),
                    const SizedBox(width: 60),
                    HoverTextButton(
                      text: 'Story',
                      onPressed: () {},
                    ),
                    const SizedBox(width: 60),
                    HoverTextButton(
                      text: 'Delivery',
                      onPressed: () {},
                    ),
                    const SizedBox(width: 60),
                    HoverTextButton(
                      text: 'Contact Us',
                      onPressed: () {},
                    ),
                  ],
                ),
              // Conditional display of Icons
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.shopping_bag_outlined,
                        color: AppColors.linksColor),
                    onPressed: () {},
                  ),
                  SizedBox(width: isSmallScreen ? 0 : 5),
                  IconButton(
                    icon: const Icon(Icons.favorite_border_outlined,
                        color: AppColors.linksColor),
                    onPressed: () {},
                  ),
                  if (!isSmallScreen) ...[
                    IconButton(
                      icon:
                          const Icon(Icons.search, color: AppColors.linksColor),
                      onPressed: () {},
                    ),
                    const SizedBox(width: 5),
                    IconButton(
                      icon: const Icon(Icons.person_outline,
                          color: AppColors.linksColor),
                      onPressed: () {},
                    ),
                  ],
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80.0);
}
