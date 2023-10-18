import 'package:flutter/material.dart';
import 'package:ocean/bottom_nav.dart';
import 'package:ocean/drawer_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        title: Image.asset(
          'root/assets/img/logo.png',
          fit: BoxFit.contain,
          height: 75,
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchScreen()),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Phần Thông tin cá nhân
              Container(
                color: Colors.blue,
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: const CircleAvatar(
                        radius: 50,
                        backgroundImage:
                            AssetImage('root/assets/img/avatar.jpg'),
                      ),
                    ),

                    // Khoảng cách giữa avatar và thông tin cá nhân
                    SizedBox(width: 20),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Họ và tên: Nguyễn Văn A',
                            style:
                                TextStyle(fontSize: 16, color: Colors.white)),
                        Text('Giới tính: Nam',
                            style:
                                TextStyle(fontSize: 16, color: Colors.white)),
                        Text('Địa chỉ: 999 Tôn Đức Thắng,Q1',
                            style:
                                TextStyle(fontSize: 16, color: Colors.white)),
                        Text('Số điện thoại: 012345678',
                            style:
                                TextStyle(fontSize: 16, color: Colors.white)),
                        Text('Email: Adeptrai@gmail.com',
                            style:
                                TextStyle(fontSize: 16, color: Colors.white)),
                      ],
                    ),
                  ],
                ),
              ),

              // Phần Thông tin thống kê
              Container(
                margin: const EdgeInsets.all(3.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    side: BorderSide(color: Colors.blueGrey, width: 2.0),
                  ),
                  elevation: 15,
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.bar_chart,
                                  color: Colors.black87,
                                  size: 24,
                                ),
                                SizedBox(width: 8.0),
                                Text(
                                  'Thông tin thống kê',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                      buildStatItem('Số sản phẩm đã mua:', '20'),
                      buildStatItem('Số đơn thành công:', '15'),
                      buildStatItem('Tổng số chi tiêu:', '500,000 VND'),
                    ],
                  ),
                ),
              ),

              // Phần Danh sách đơn hàng
              Container(
                margin: const EdgeInsets.all(3.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    side: const BorderSide(color: Colors.blueGrey, width: 2.0),
                  ),
                  elevation: 5,
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(16),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.list_alt,
                                  color: Colors.black87,
                                  size: 24,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'Danh sách đơn hàng',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      const Divider(
                        color: Colors.black,
                        thickness: 1,
                      ),

                      // List các đơn hàng
                      buildOrderItem(Icons.check_circle, 'Đơn thành công',
                          Icons.arrow_forward_ios),
                      buildOrderItem(
                          Icons.cancel, 'Đơn đã hủy', Icons.arrow_forward_ios),
                      buildOrderItem(Icons.access_time, 'Đơn chờ giao',
                          Icons.arrow_forward_ios),
                      buildOrderItem(Icons.star_border, 'Đánh giá',
                          Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigator(index: 2),
      drawer: DrawerMenu(),
    );
  }
}

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        title: const Text('Tìm kiếm sản phẩm..'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              // Xử lý cập nhật dữ liệu ở đây
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 8.0, vertical: 16.0), // Thêm khoảng cách dọc
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextField(
                decoration: const InputDecoration(
                  hintText: 'Nhập từ khóa tìm kiếm...',
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                ),
                onSubmitted: (String searchTerm) {
                  // TODO: Xử lý tìm kiếm với giá trị searchTerm
                },
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'root/assets/img/searchorders.png',
                    height: 150,
                  ),
                  SizedBox(height: 16),
                  const Text(
                    'Bạn có thể tìm kiếm sản phẩm theo tên Shop,',
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    'ID đơn hàng hoặc tên sản phẩm',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Thông tin thống kê
Widget buildStatItem(String label, String value) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 12),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 200,
          child: Text(
            label,
            style: const TextStyle(fontSize: 20, color: Colors.black87),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            value,
            style: const TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ],
    ),
  );
}

// Danh sách đơn hàng
Widget buildOrderItem(IconData icon, String label, IconData nextIcon) {
  return ListTile(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(icon, color: const Color.fromARGB(255, 235, 65, 50)),
            SizedBox(width: 10),
            Text(
              label,
              style: TextStyle(fontSize: 18, color: Colors.black87),
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              nextIcon,
              color: Colors.black,
              size: 16,
            ),
          ],
        ),
      ],
    ),
    onTap: () {
      // Xử lý khi người dùng nhấn vào một đơn hàng
    },
  );
}
