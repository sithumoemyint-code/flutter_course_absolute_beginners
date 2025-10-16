import 'package:flutter/material.dart';
import 'package:my_app/base/res/styles/app_styles.dart' show AppStyles;
import 'package:my_app/base/widgets/app_double_text.dart' show AppDoubleText;
import 'package:my_app/routes/routes.dart' show AppRoutes;
import 'package:my_app/screens/search/widgets/app_text_icon.dart'
    show AppTextIcon;
import 'package:my_app/screens/search/widgets/app_ticket_tabs.dart'
    show AppTicketTabs;
import 'package:my_app/screens/search/widgets/find_tickets.dart'
    show FindTickets;
import 'package:my_app/screens/search/widgets/ticket_promotion.dart'
    show TicketPromotion;

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(height: 40),
          Text(
            "What are\nyou looking for?",
            style: AppStyles.headLineStyle1.copyWith(fontSize: 35),
          ),
          const SizedBox(height: 20),
          AppTicketTabs(),
          const SizedBox(height: 25),
          const AppTextIcon(
            icon: Icons.flight_takeoff_rounded,
            text: 'Departure',
          ),
          const SizedBox(height: 20),
          const AppTextIcon(icon: Icons.flight_land_rounded, text: 'Arrival'),
          const SizedBox(height: 25),
          const FindTickets(),
          const SizedBox(height: 40),
          AppDoubleText(
            bigText: 'Upcoming Flight',
            smallText: 'View all',
            func: () => Navigator.pushNamed(context, AppRoutes.allTickets),
          ),
          const SizedBox(height: 15),
          const TicketPromotion(),
        ],
      ),
    );
  }
}
