import 'package:flutter/material.dart';

import 'core.dart';

// only make ui without any type of clean code to end task with faster way 



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedCategory = 0;
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(),
                const SizedBox(height: 16),
                _buildHeroCard(),
                const SizedBox(height: 14),
                _buildVerificationBanner(),
                const SizedBox(height: 14),
                _buildCategoriesBar(),
                const SizedBox(height: 16),
                _buildPostCard(
                  author: 'أبو خالد',
                  time: 'منذ 3 ساعات',
                  tagText: 'توصية',
                  tagBg: AppColors.primary,
                  tagColor: Colors.white,
                  tagIcon: Icons.star_rounded,
                  content: 'أقترح محل "العائلة" للمواد الغذائية. أسعارهم ممتازة وخدمة مميزة.',
                  icon: Icons.storefront_outlined,
                  location: 'حي عرقة',
                  likes: '24',
                  comments: '3',
                ),
                _buildPostCard(
                  author: 'أم محمد',
                  time: 'منذ 5 ساعات',
                  tagText: 'تنبيه',
                  tagBg: AppColors.alertBg,
                  tagColor: AppColors.alertText,
                  tagIcon: Icons.warning_amber_rounded,
                  content: 'يوجد انقطاع مؤقت للمياه في الحي حالياً، يرجى أخذ الاحتياطات.',
                  icon: Icons.water_drop_outlined,
                  location: 'حي عرقة',
                  likes: '18',
                  comments: '7',
                ),
                _buildPostCard(
                  author: 'سارة العتيبي',
                  time: 'منذ 6 ساعات',
                  tagText: 'توصية',
                  tagBg: AppColors.primary,
                  tagColor: Colors.white,
                  tagIcon: Icons.star_rounded,
                  content: 'فيه ورشة سيارات ممتازة في الحي، خدمة سريعة وأسعار مناسبة.',
                  icon: Icons.directions_car_outlined,
                  location: 'حي عرقة',
                  likes: '12',
                  comments: '2',
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: AppColors.primary,
          elevation: 3,
          shape: const CircleBorder(),
          child: const Icon(Icons.add, color: Colors.white, size: 28),
        ),
        bottomNavigationBar: _buildBottomNav(),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: const [
            Icon(Icons.location_on, color: AppColors.primary, size: 22),
            SizedBox(width: 4),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'حي عرقة',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textDark,
                  ),
                ),
                Text(
                  'الرياض',
                  style: TextStyle(fontSize: 11, color: Colors.grey),
                ),
              ],
            ),
            SizedBox(width: 4),
            Icon(Icons.keyboard_arrow_down, size: 18, color: Colors.grey),
          ],
        ),
        Column(
          children: const [
            Text(
              'جوار',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
                letterSpacing: 0.5,
              ),
            ),
            Text(
              'شبكة الحي الموثوقة',
              style: TextStyle(fontSize: 10, color: Colors.grey),
            ),
          ],
        ),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black12),
          ),
          child: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none_rounded,
              color: Colors.black87,
              size: 22,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildHeroCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [AppColors.primaryLight, AppColors.primaryDark],
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withValues(alpha: 0.2),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.18),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.home_rounded,
                  color: Colors.white,
                  size: 22,
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'حي عرقة',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'الرياض',
                    style: TextStyle(color: Colors.white70, fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 18),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildStat('4.8', 'تقييم الحي', Icons.star_rounded, Colors.amber),
              Container(width: 1, height: 24, color: Colors.white24),
              _buildStat(
                '17',
                'مشاركة اليوم',
                Icons.chat_bubble_outline_rounded,
                Colors.white,
              ),
              Container(width: 1, height: 24, color: Colors.white24),
              _buildStat('128', 'جار', Icons.people_alt_outlined, Colors.white),
            ],
          ),
          const SizedBox(height: 16),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 9),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.08),
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: Colors.white.withValues(alpha: 0.35)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.map_outlined, color: Colors.white, size: 16),
                SizedBox(width: 6),
                Text(
                  'خريطة الحي',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 6),
                Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.white70,
                  size: 11,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStat(
    String value,
    String label,
    IconData icon,
    Color iconColor,
  ) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              value,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 4),
            Icon(icon, color: iconColor, size: 15),
          ],
        ),
        const SizedBox(height: 2),
        Text(
          label,
          style: const TextStyle(color: Colors.white70, fontSize: 11),
        ),
      ],
    );
  }

  Widget _buildVerificationBanner() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.bannerBg,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.bannerBorder),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(
              Icons.check_rounded,
              color: Colors.white,
              size: 16,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'أكمل توثيق إقامتك',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  'للحصول على مزايا وخدمات أفضل من جوار',
                  style: TextStyle(fontSize: 11, color: Colors.black54),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 14,
            color: Colors.black45,
          ),
        ],
      ),
    );
  }

  Widget _buildCategoriesBar() {
    final categories = [
      {'title': 'الكل', 'icon': Icons.grid_view_rounded},
      {'title': 'تنبيهات', 'icon': Icons.notifications_none_rounded},
      {'title': 'أسئلة', 'icon': Icons.help_outline_rounded},
      {'title': 'توصيات', 'icon': Icons.star_border_rounded},
      {'title': 'بيع وشراء', 'icon': Icons.shopping_bag_outlined},
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(categories.length, (index) {
          final isSelected = selectedCategory == index;
          return Padding(
            padding: const EdgeInsets.only(left: 8),
            child: InkWell(
              onTap: () {
                setState(() {
                  selectedCategory = index;
                });
              },
              borderRadius: BorderRadius.circular(10),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 7,
                ),
                decoration: BoxDecoration(
                  color: isSelected ? AppColors.primary : Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: isSelected ? AppColors.primary : AppColors.border,
                  ),
                ),
                child: Row(
                  children: [
                    Icon(
                      categories[index]['icon'] as IconData,
                      size: 15,
                      color: isSelected ? Colors.white : Colors.black54,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      categories[index]['title'] as String,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: isSelected
                            ? FontWeight.bold
                            : FontWeight.normal,
                        color: isSelected ? Colors.white : Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget _buildPostCard({
    required String author,
    required String time,
    required String tagText,
    required Color tagBg,
    required Color tagColor,
    required IconData tagIcon,
    required String content,
    required IconData icon,
    required String location,
    required String likes,
    required String comments,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.cardBorder),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 17,
                    backgroundColor: AppColors.border,
                    child: const Icon(
                      Icons.person,
                      color: Colors.grey,
                      size: 20,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        author,
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: AppColors.textDark,
                        ),
                      ),
                      Text(
                        time,
                        style: const TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                decoration: BoxDecoration(
                  color: tagBg,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      tagText,
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: tagColor,
                      ),
                    ),
                    const SizedBox(width: 3),
                    Icon(tagIcon, size: 12, color: tagColor),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  content,
                  style: const TextStyle(
                    fontSize: 13,
                    height: 1.45,
                    color: AppColors.textBody,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Column(
                children: [
                  Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      color: AppColors.iconBg,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(icon, color: AppColors.primary, size: 24),
                  ),
                  const SizedBox(height: 3),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.location_on,
                        size: 10,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 1),
                      Text(
                        location,
                        style: const TextStyle(fontSize: 9, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                likes,
                style: const TextStyle(fontSize: 11, color: Colors.grey),
              ),
              const SizedBox(width: 4),
              const Icon(Icons.favorite_border, size: 15, color: Colors.grey),
              const SizedBox(width: 14),
              Text(
                comments,
                style: const TextStyle(fontSize: 11, color: Colors.grey),
              ),
              const SizedBox(width: 4),
              const Icon(
                Icons.chat_bubble_outline_rounded,
                size: 14,
                color: Colors.grey,
              ),
              const SizedBox(width: 14),
              const Icon(Icons.more_horiz, size: 18, color: Colors.grey),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNav() {
    return BottomAppBar(
      color: Colors.white,
      surfaceTintColor: Colors.transparent,
      elevation: 8,
      height: 62,
      padding: EdgeInsets.zero,
      shape: const CircularNotchedRectangle(),
      notchMargin: 6,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildBottomNavItem(0, 'حولك', Icons.home_rounded),
          _buildBottomNavItem(1, 'اكتشف', Icons.search_rounded),
          const SizedBox(width: 44),
          _buildBottomNavItem(2, 'الإشعارات', Icons.notifications_none_rounded),
          _buildBottomNavItem(3, 'حسابي', Icons.person_outline_rounded),
        ],
      ),
    );
  }

  Widget _buildBottomNavItem(int index, String title, IconData icon) {
    final isSelected = selectedTab == index;
    return InkWell(
      onTap: () {
        setState(() {
          selectedTab = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 22,
              color: isSelected ? AppColors.primary : Colors.grey,
            ),
            const SizedBox(height: 2),
            Text(
              title,
              style: TextStyle(
                fontSize: 10,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                color: isSelected ? AppColors.primary : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
