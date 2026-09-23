import 'package:flutter/material.dart';
import 'package:act2/screens/login.dart';

class JessaScreen extends StatelessWidget {
  const JessaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void LogOut() {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Are you sure you want to log out?'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Close the dialog
                  },
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    // Add your logout logic here
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    ); // Close the dialog
                  },
                  child: const Text('Log Out'),
                ),
              ],
            );
          });
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Faceback',
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 44, 91, 129)),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              LogOut();
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                // Cover photo
                Image.asset(
                  'assets/images/jss_cvr.jpg',
                  width: double.infinity,
                  height: 230,
                  fit: BoxFit.cover,
                ),
                // Profile picture
                Positioned(
                  bottom: -30,
                  left: 20,
                  child: Container(
                    width: 140,
                    height: 140,
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                      child: SizedBox(
                        width: 130,
                        height: 130,
                        child: Image.asset(
                          'assets/images/jss_pfp.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            //Name
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Jessamae Cortez',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            // friends
            const Row(
              children: [
                Text(
                  '    90',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  ' friends',
                  style: TextStyle(fontSize: 19),
                )
              ],
            ),

            //Bio
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '-Festina lente \n \n col 3:23',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Image.asset(
                              'assets/images/jss_song.jpg',
                              width: 70,
                              height: 70,
                              fit: BoxFit.cover,
                            ),
                            const Icon(
                              Icons.play_arrow,
                              size: 35,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Text(
                            'Van Gogh (ft. Ashley Alisha)',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 130, 0),
                          child: Text(
                            'Dept',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 109, 109, 109)),
                          ),
                        )
                      ],
                    ),
                    const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
                          child: Icon(
                            Icons.more_horiz,
                            size: 30,
                          ),
                        )
                      ],
                    )
                  ],
                )),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 2, 10),
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.add),
                    label: const Text('Add to Story'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(2, 10, 2, 10),
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.edit),
                      label: const Text(' Edit Profile '),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.fromLTRB(2, 10, 2, 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(10),
                    ),
                    child: const Icon(Icons.more_horiz),
                  ),
                ),
              ],
            ),
            const Padding(
                padding: EdgeInsets.fromLTRB(20, 5, 0, 10),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Icon(
                              Icons.security,
                              size: 40,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 25, 0),
                          child: Text(
                            "You've locked your profile",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 140, 0),
                          child: Text(
                            'Learn More',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 109, 109, 109)),
                          ),
                        )
                      ],
                    ),
                  ],
                )),
            const Divider(
              thickness: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 5, 0, 5),
              child: Row(
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Posts',
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 105, 105, 105)),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Photos',
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 105, 105, 105)),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Videos',
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 105, 105, 105)),
                      )),
                ],
              ),
            ),
            const Divider(
              height: 1,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Details',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 5, 15, 5),
                        child: Icon(
                          Icons.more_horiz,
                          size: 30,
                        ),
                      ),
                      Text(
                        'See your About info',
                        softWrap: true,
                        style: TextStyle(fontSize: 17),
                      )
                    ],
                  ),
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(253, 161, 202, 236),
                        minimumSize: const Size(300, 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    child: const Text(
                      'Edit public details',
                      style: TextStyle(fontSize: 17),
                    ))
              ],
            ),
            const SizedBox(height: 30),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 5, 2),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'assets/images/posts/jss_2.jpg',
                            width: 90,
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Text(
                        '💙',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 5, 2),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'assets/images/posts/jss_3.jpg',
                            width: 90,
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Text(
                        '🟦',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 5, 2),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'assets/images/posts/jss_4.jpg',
                            width: 90,
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Text(
                        '🆒',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 5, 2),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'assets/images/posts/jss_5.jpg',
                            width: 90,
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Text(
                        '💠',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 15, 2),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'assets/images/posts/jss_6.png',
                            width: 90,
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Text(
                        '🌀',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
                padding: EdgeInsets.fromLTRB(0, 40, 0, 20),
                child: Divider(
                  height: 1,
                  thickness: 5,
                )),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 300, 15),
                  child: Text(
                    'Posts',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.fromLTRB(20, 5, 10, 15),
                    child: ClipOval(
                      child: SizedBox(
                        width: 48,
                        height: 48,
                        child: Image.asset('assets/images/jss_pfp.jpg',
                            fit: BoxFit.cover),
                      ),
                    )),
                const Text("What's on your mind?",
                    style: TextStyle(fontSize: 16)),
                const Padding(
                  padding: EdgeInsets.fromLTRB(150, 5, 10, 0),
                  child: Icon(
                    Icons.add_a_photo,
                    color: Color.fromARGB(255, 36, 201, 94),
                  ),
                ),
              ],
            ),
            Container(
              height: 60,
              width: double
                  .infinity, // Make the container expand to its parent's width
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 248, 249, 251),
                border: Border.all(
                  color:
                      const Color.fromARGB(255, 233, 231, 231), // Border color
                  width: 1, // Border width
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      label: const Text('Reel'),
                      icon: const Icon(
                        Icons.movie,
                        color: Color.fromARGB(255, 201, 36, 36),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal:
                            8.0), // Horizontal padding around the button
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      label: const Text('Live'),
                      icon: const Icon(
                        Icons.videocam,
                        color: Color.fromARGB(255, 201, 36, 36),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.message,
                color: Colors.black,
              ),
              label: const Text(
                'Manage posts',
                style: TextStyle(fontSize: 17, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(252, 210, 213, 215),
                minimumSize: const Size(300, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const Divider(
              thickness: 5,
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        ClipOval(
                            child: SizedBox(
                                height: 48,
                                width: 48,
                                child:
                                    Image.asset('assets/images/jss_pfp.jpg'))),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 115, 0),
                          child: Text(
                            'Jessamae Cortez',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 160, 0),
                          child: Text(
                            'Just Now',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 109, 109, 109)),
                          ),
                        )
                      ],
                    ),
                    const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(55, 0, 0, 0),
                          child: Icon(
                            Icons.more_horiz,
                            size: 30,
                          ),
                        )
                      ],
                    ),
                  ],
                )),
            Column(
              children: [
                const Padding(
                    padding: EdgeInsets.fromLTRB(10, 13, 323, 5),
                    child: Text("blueMing", style: TextStyle(fontSize: 16))),
                SizedBox(child: Image.asset('assets/images/posts/jss_7.jpg')),
              ],
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                  child: Row(
                    children: [
                      Padding(padding: EdgeInsets.fromLTRB(15, 5, 5, 0)),
                      Icon(
                        Icons.thumb_up_off_alt,
                        color: Color.fromARGB(184, 31, 29, 29),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Like",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(184, 31, 29, 29),
                        ),
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(22, 5, 5, 0)),
                      Icon(
                        Icons.chat_bubble,
                        color: Color.fromARGB(184, 31, 29, 29),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Comment",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(184, 31, 29, 29),
                        ),
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(15, 5, 5, 0)),
                      Icon(
                        Icons.chat_bubble_outline,
                        color: Color.fromARGB(184, 31, 29, 29),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Send",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(184, 31, 29, 29),
                        ),
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(17, 5, 5, 0)),
                      Icon(
                        Icons.reply,
                        color: Color.fromARGB(184, 31, 29, 29),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Share",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(184, 31, 29, 29),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
