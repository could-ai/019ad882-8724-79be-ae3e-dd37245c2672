import 'package:flutter/material.dart';

class AstrologyScreen extends StatelessWidget {
  const AstrologyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('星座运势'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Daily Fortune Card
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF1A237E), Color(0xFF3949AB)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.indigo.withOpacity(0.3),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const Text(
                    '今日运势',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                      letterSpacing: 1.2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    '天蝎座',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(5, (index) => const Icon(Icons.star, color: Colors.amber, size: 20)),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      '今天你的直觉非常敏锐，适合做一些重要的决定。在人际交往中，展现真实的自己会更有魅力。',
                      style: TextStyle(color: Colors.white, height: 1.5),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Tools Grid
            const Text(
              '星盘工具',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 4,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              children: [
                _buildToolItem(Icons.blur_on, '本命盘', Colors.purple),
                _buildToolItem(Icons.favorite_border, '合盘', Colors.pink),
                _buildToolItem(Icons.access_time, '行运盘', Colors.blue),
                _buildToolItem(Icons.calendar_today, '三限盘', Colors.orange),
                _buildToolItem(Icons.map, '星图', Colors.teal),
                _buildToolItem(Icons.auto_fix_high, '塔罗', Colors.indigo),
                _buildToolItem(Icons.casino, '骰子', Colors.red),
                _buildToolItem(Icons.more_horiz, '更多', Colors.grey),
              ],
            ),
            const SizedBox(height: 24),

            // Articles
            const Text(
              '星座解读',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _buildArticleItem(
              '水逆退散！这三个星座下周运势爆棚',
              '星象解读',
              'https://via.placeholder.com/100',
            ),
            _buildArticleItem(
              '月亮落在双鱼座的人，内心有多柔软？',
              '深度分析',
              'https://via.placeholder.com/100',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildToolItem(IconData icon, String label, Color color) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: color, size: 24),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget _buildArticleItem(String title, String tag, String imageUrl) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(Icons.image, color: Colors.grey),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    tag,
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey[600],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
