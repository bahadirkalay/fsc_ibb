part of home_view;

class HomeTop extends StatelessWidget {
  const HomeTop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.height;
    String profile_img =
        'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cmFuZG9tJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80';
    return Padding(
      padding: EdgeInsets.only(
          left: _height * 0.02, right: _height * 0.02, top: _height * 0.02),
      child: Container(
        height: _height * 10 / 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(profile_img),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: _height * 0.03, left: _height * 0.01),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome Back!',
                        style: TextStyle(
                            color: Colors.grey.shade600, fontSize: 12),
                      ),
                      Text(
                        'Burcu ÖZTÜRK',
                        style: TextStyle(
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
                height: _height * 0.04,
                width: _height * 0.04,
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: Icon(Icons.notifications_active, size: 20))
          ],
        ),
      ),
    );
  }
}
