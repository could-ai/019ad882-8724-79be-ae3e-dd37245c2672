import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF6A1B9A), Color(0xFFAB47BC)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 40),
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.person, size: 40, color: Colors.grey[300]),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      '点击登录/注册',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  // Stats Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildStatItem('0', '关注'),
                      _buildStatItem('0', '粉丝'),
                      _buildStatItem('0', '获赞'),
                    ],
                  ),
                  const SizedBox(height: 24),

                  // Menu Items
                  _buildMenuItem(Icons.history, '测试记录'),
                  _buildMenuItem(Icons.favorite_border, '我的收藏'),
                  _buildMenuItem(Icons.card_giftcard, '优惠券'),
                  _buildMenuItem(Icons.settings, '设置'),
                  _buildMenuItem(Icons.help_outline, '帮助与反馈'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem(String count, String label) {
    return Column(
      children: [
        Text(
          count,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }

  Widget _buildMenuItem(IconData icon, String title) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.05),
            spreadRadius: 1,
            blurRadius: 2,
          ),
        ],
      ),
      child: ListTile(
        leading: Icon(icon, color: Colors.purple),
        title: Text(title),
        trailing: const Icon(Icons.chevron_right, color: Colors.grey),
        onTap: () {},
      ),
    );
  }
}
