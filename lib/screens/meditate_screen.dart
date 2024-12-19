import 'package:flutter/material.dart';

class MeditateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Карточка с изображением и кнопкой
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Изображение в карточке с увеличенной шириной и закругленными углами
                  ClipRRect(
                    borderRadius:
                        BorderRadius.circular(20), // Закругленные углы
                    child: Image.asset(
                      'lib/assets/relax_image.png', // Путь к изображению
                      width: double.infinity, // Ширина на весь контейнер
                      height: 200, // Высота изображения
                      fit: BoxFit.cover, // Покрытие без искажений
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Peter Mach',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Mind Deep Relax',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Join the Community as we prepare over 33 days to relax and feel joy with the mind and happiness session across the World.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                  ),
                  SizedBox(height: 15),
                  // Кнопка по центру
                  Center(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.play_arrow),
                      label: Text('Play Next Session'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF00A7A7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Список треков
            Column(
              children: [
                _buildTrackItem(
                  context,
                  color: Colors.blue,
                  title: 'Sweet Memories',
                  subtitle: 'December 29 Pre-Launch',
                ),
                _buildTrackItem(
                  context,
                  color: Colors.teal,
                  title: 'A Day Dream',
                  subtitle: 'December 29 Pre-Launch',
                ),
                _buildTrackItem(
                  context,
                  color: Colors.orange,
                  title: 'Mind Explore',
                  subtitle: 'December 29 Pre-Launch',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Виджет для треков
  Widget _buildTrackItem(BuildContext context,
      {required Color color, required String title, required String subtitle}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          // Иконка трека
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: color.withOpacity(0.2),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.play_arrow,
              color: color,
            ),
          ),
          SizedBox(width: 15),
          // Текст трека
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          // Меню (три точки)
          Icon(
            Icons.more_vert,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
