import 'package:flutter/material.dart';

class CourseDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          '3D Design Basic',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Изображение с закруглёнными углами
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'lib/assets/course_image.png', // Путь к изображению
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 15),
            // Метки (рейтинг, звезда и статус)
            Row(
              children: [
                _buildTag(Icons.people, '4,569'),
                SizedBox(width: 10),
                _buildTag(Icons.star, '4.9'),
                SizedBox(width: 10),
                _buildTag(null, 'Best Seller', isCustom: true),
              ],
            ),
            SizedBox(height: 20),
            // Название и описание курса
            Text(
              '3D Design Basic',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'In this course you will learn how to build a space to a 3-dimensional product. There are 24 premium learning videos for you.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: 20),
            // Заголовок списка уроков
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '24 Lessons (20 hours)',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            // Список уроков
            _buildLessonItem(
              context,
              title: 'Introduction to 3D',
              duration: '20 mins',
              image: 'lib/assets/lesson_image.png', // Путь к изображению урока
              isCompleted: true,
            ),
            SizedBox(height: 20),
            // Кнопка записи
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                ),
                child: Text(
                  'Enroll - \$24.99',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Виджет для меток (рейтинг, звезда, статус)
  Widget _buildTag(IconData? icon, String text, {bool isCustom = false}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: isCustom ? Colors.purple[100] : Colors.grey[200],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          if (icon != null)
            Icon(
              icon,
              color: isCustom ? Colors.purple : Colors.grey[700],
              size: 18,
            ),
          if (icon != null) SizedBox(width: 5),
          Text(
            text,
            style: TextStyle(
              color: isCustom ? Colors.purple : Colors.grey[800],
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  // Виджет для урока
  Widget _buildLessonItem(
    BuildContext context, {
    required String title,
    required String duration,
    required String image,
    bool isCompleted = false,
  }) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          // Изображение урока
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              image,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 10),
          // Текст урока
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
                  duration,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          // Статус завершённости
          if (isCompleted)
            Icon(
              Icons.check_circle,
              color: Colors.blue,
            ),
        ],
      ),
    );
  }
}
