import 'package:flutter/material.dart';

class ConsultScreen extends StatelessWidget {
  const ConsultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('咨询与AI'),
      ),
      body: Column(
        children: [
          // AI Chat Entry
          Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.purple.withOpacity(0.2)),
              boxShadow: [
                BoxShadow(
                  color: Colors.purple.withOpacity(0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.purple.shade50,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.smart_toy, color: Colors.purple, size: 32),
                ),
                const SizedBox(width: 16),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'AI 心理咨询师',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '24小时在线，随时倾听你的心事',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text('聊一聊'),
                ),
              ],
            ),
          ),

          // Human Counselors List
          Expanded(
            child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      '推荐咨询师',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    child: ListView.separated(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      itemCount: 5,
                      separatorBuilder: (context, index) => const Divider(height: 32),
                      itemBuilder: (context, index) {
                        return _buildCounselorItem(index);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCounselorItem(int index) {
    final names = ['李医生', '张老师', '王咨询师', '赵博士', '陈老师'];
    final tags = ['情感修复', '个人成长', '职场压力', '亲子关系', '焦虑缓解'];
    
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.grey[200],
          child: Icon(Icons.person, size: 30, color: Colors.grey[400]),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    names[index],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Text(
                      '执业认证',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                '擅长：${tags[index]} · 从业${index + 3}年',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Icon(Icons.star, size: 14, color: Colors.amber),
                  const Text(
                    ' 4.9',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    '${(index + 1) * 100}+ 人咨询过',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Column(
          children: [
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.purple),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text('预约', style: TextStyle(color: Colors.purple)),
            ),
          ],
        ),
      ],
    );
  }
}
