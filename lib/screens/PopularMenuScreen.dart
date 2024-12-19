import 'package:flutter/material.dart';

class PopularMenuScreen extends StatelessWidget {
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
          'Popular Menu',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          // Поисковая строка
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          blurRadius: 10,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.search, color: Colors.grey),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10),
                // Фильтр
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Icon(Icons.filter_alt_outlined, color: Colors.grey),
                ),
              ],
            ),
          ),
          // Список меню
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16),
              children: [
                _buildMenuItem(
                  context,
                  imagePath: 'lib/assets/original_salad.png',
                  title: 'Original Salad',
                  subtitle: 'Lovy Food',
                  price: '\$8',
                ),
                _buildMenuItem(
                  context,
                  imagePath: 'lib/assets/fresh_salad.png',
                  title: 'Fresh Salad',
                  subtitle: 'Cloudy Resto',
                  price: '\$10',
                ),
                _buildMenuItem(
                  context,
                  imagePath: 'lib/assets/yummie_ice_cream.png',
                  title: 'Yummie Ice Cream',
                  subtitle: 'Circlo Resto',
                  price: '\$6',
                ),
                _buildMenuItem(
                  context,
                  imagePath: 'lib/assets/vegan_special.png',
                  title: 'Vegan Special',
                  subtitle: 'Haty Food',
                  price: '\$11',
                ),
                _buildMenuItem(
                  context,
                  imagePath: 'lib/assets/mixed_pasta.png',
                  title: 'Mixed Pasta',
                  subtitle: 'Recto Food',
                  price: '\$13',
                ),
              ],
            ),
          ),
          // Нижняя панель навигации
          Container(
            padding: EdgeInsets.symmetric(
                vertical: 5), // Уменьшен вертикальный отступ
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  blurRadius: 10,
                  offset: Offset(0, -5),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildNavItem(Icons.home, 'Home', isSelected: true),
                _buildNavItem(Icons.shopping_bag, 'Cart'),
                _buildNavItem(Icons.chat, 'Messages'),
                _buildNavItem(Icons.person, 'Profile'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Виджет для одного элемента меню
  Widget _buildMenuItem(
    BuildContext context, {
    required String imagePath,
    required String title,
    required String subtitle,
    required String price,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          // Изображение блюда
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imagePath,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 10),
          // Текстовая информация
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
          // Цена
          Text(
            price,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }

  // Виджет для элемента нижнего меню
  Widget _buildNavItem(IconData icon, String label, {bool isSelected = false}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(6), // Уменьшен отступ внутри иконки
          decoration: BoxDecoration(
            color: isSelected ? Colors.pink[50] : Colors.transparent,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(
            icon,
            color: isSelected ? Colors.pink : Colors.grey,
            size: 24, // Размер иконки
          ),
        ),
        if (isSelected)
          Text(
            label,
            style: TextStyle(
              color: Colors.pink,
              fontSize: 10, // Уменьшен размер шрифта
              fontWeight: FontWeight.bold,
            ),
          ),
      ],
    );
  }
}
