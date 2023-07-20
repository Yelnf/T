import 'package:flutter/material.dart';

var loginregisterstyle = TextStyle(fontSize: 20.0, color: Colors.white);

class Header extends StatelessWidget {
  const Header({super.key});

  Widget _notLoginBuilder(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.green),
      height: 100.0,
      child: Row(
        children: [
          Container(
            height: 65.0,
            width: 65.0,
            margin: EdgeInsets.only(right: 18.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://img1.baidu.com/it/u=1545101457,3446444016&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=504'),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(top: 13.0)),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('login');
                    },
                    child: Text(
                      '登陆/',
                      style: loginregisterstyle,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('register');
                    },
                    child: Text(
                      '注册',
                      style: loginregisterstyle,
                    ),
                  ),
                ],
              ),
              Text(
                '登陆后可体验更多',
                style: TextStyle(color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _LoginBuilder(BuildContext context) {
    String usrname = '已登录用户名';
    String usrImage =
        'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fblog%2F202106%2F13%2F20210613235426_7a793.thumb.1000_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1685004940&t=4b0050e1701cddd9b40fc6cdae2e503c';

    return Container(
      decoration: BoxDecoration(color: Colors.pink[400]),
      height: 100.0,
      child: Row(
        children: [
          Container(
            height: 65.0,
            width: 65.0,
            margin: EdgeInsets.only(right: 18.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(usrImage),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(top: 13.0)),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('login');
                    },
                    child: Text(
                      usrname,
                      style: loginregisterstyle,
                    ),
                  ),
                ],
              ),
              Text(
                '查看编辑个人资料',
                style: TextStyle(color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var isLogin = true;
    return isLogin ? _LoginBuilder(context) : _notLoginBuilder(context);
  }
}
