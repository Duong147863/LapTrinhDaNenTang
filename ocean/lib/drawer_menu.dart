import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child: Container(
              width: double.infinity,
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(3),
                        width: 100,
                        height: 100,
                        child: const CircleAvatar(
                          backgroundImage:
                              AssetImage("root/assets/img/avatar.jpg"),
                        ),
                      ),
                      SizedBox(height: 2),
                      Text("ABCxyz",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "\nUsername:",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          SizedBox(width: 4),
                          Text("\nvanA123", style: TextStyle(fontSize: 15)),
                        ],
                      ),
                      SizedBox(height: 6), // Khoảng cách giữa các row
                      Row(
                        children: [
                          Text(
                            "Thành viên:",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          SizedBox(width: 6),
                          Text("Bậc bạc", style: TextStyle(fontSize: 15)),
                        ],
                      ),
                      SizedBox(height: 6),
                      Row(
                        children: [
                          Text(
                            "Lv:",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          SizedBox(width: 4),
                          Text("12", style: TextStyle(fontSize: 15)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero, // Xóa khoảng cách giữa viền & List
              children: [
                ListTile(
                  contentPadding: EdgeInsets.only(left: 16, top: 0),
                  leading: Icon(Icons.edit),
                  title: Text("Chỉnh sửa thông tin"),
                  onTap: () {
                    // Xử lý khi người dùng nhấn vào chỉnh sửa thông tin
                    Navigator.pop(context);
                    // Đóng Drawer
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Cài đặt"),
                  onTap: () {
                    // Xử lý khi người dùng nhấn vào chỉnh sửa thông tin
                    Navigator.pop(context);
                    // Đóng Drawer
                  },
                ),
                ListTile(
                  leading: Icon(Icons.question_mark),
                  title: Text("Hỗ trợ"),
                  onTap: () {
                    // Xử lý khi người dùng nhấn vào chỉnh sửa thông tin
                    Navigator.pop(context);
                    // Đóng Drawer
                  },
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.black,
            thickness: 1,
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Đăng xuất"),
            onTap: () {
              // Xử lý khi người dùng nhấn vào chỉnh sửa thông tin
              Navigator.pop(context);
              // Đóng Drawer
            },
          ),
        ],
      ),
    );
  }
}
