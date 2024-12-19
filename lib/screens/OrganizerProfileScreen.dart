import 'package:flutter/material.dart';

class OrganizerProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Organizer',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Фотография профиля
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                  'lib/assets/profile_image.png'), // Путь к изображению
            ),
            SizedBox(height: 15),
            // Имя пользователя
            Text(
              'Albert Flores',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            // Статистика
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildStatItem('2.368', 'Followers'),
                _buildStatItem('346', 'Following'),
                _buildStatItem('13', 'Events'),
              ],
            ),
            // Линия под статистикой
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Divider(
                thickness: 1,
                color: Colors.grey[300],
              ),
            ),
            // Кнопки "Follow" и "Messages"
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Кнопка "Follow"
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.person_add,
                    color: Colors.blue,
                  ),
                  label: Text(
                    'Follow',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.blue), // Синий контур
                    backgroundColor: Colors.white, // Белый фон
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                // Кнопка "Messages"
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.mail, color: Colors.blue),
                  label: Text('Messages'),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.blue),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ],
            ),
            // Линия под кнопками
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Divider(
                thickness: 1,
                color: Colors.grey[300],
              ),
            ),
            // Кнопки "About", "Events", "Reviews"
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildTabButton('About', isSelected: true),
                _buildTabButton('Events'),
                _buildTabButton('Reviews'),
              ],
            ),
            SizedBox(height: 20),
            // Описание
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'About',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
                height: 1.5, // Увеличен межстрочный интервал
              ),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {},
              child: Text(
                'Read more...',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Виджет для статистики
  Widget _buildStatItem(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  // Виджет для кнопок "About", "Events", "Reviews"
  Widget _buildTabButton(String label, {bool isSelected = false}) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        foregroundColor: isSelected ? Colors.white : Colors.blue,
        backgroundColor: isSelected ? Colors.blue : Colors.white,
        side: BorderSide(color: Colors.blue),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
