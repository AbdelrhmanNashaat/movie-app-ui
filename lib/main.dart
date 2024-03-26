import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff09090F),
        body: Container(
          margin: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 25,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Hello ',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Tilt Neon'),
                          ),
                          Text(
                            'Daisy!',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Tilt Neon'),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Check for latest addition.',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Tilt Neon'),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    maxRadius: 30,
                    minRadius: 30,
                    backgroundImage: NetworkImage(
                        'https://media-cldnry.s-nbcnews.com/image/upload/rockcms/2022-10/girl-names-that-start-with-c-zz-221027-768b76.jpg'),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 2),
                child: ListTile(
                  tileColor:
                      const Color.fromARGB(255, 95, 94, 94).withOpacity(0.3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  leading: const Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 24,
                  ),
                  title: const Text(
                    'Search',
                    style:
                        TextStyle(color: Colors.grey, fontFamily: 'Tilt Neon'),
                  ),
                  trailing: const Icon(
                    Icons.mic_outlined,
                    color: Colors.grey,
                    size: 24,
                  ),
                ),
              ),
              const Text(
                'Filters',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                    fontFamily: 'Tilt Neon'),
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ContainerWithImage(
                    icon: Icons.view_agenda,
                    text: 'Genre',
                  ),
                  ContainerWithImage(
                    icon: Icons.star,
                    text: 'Top IMDB',
                  ),
                  ContainerWithImage(
                    icon: Icons.language,
                    text: 'Language',
                  ),
                  ContainerWithImage(
                    icon: Icons.check_circle,
                    text: 'Watched',
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Text(
                    'Featured ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Tilt Neon'),
                  ),
                  Text(
                    'Series',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Tilt Neon'),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ImageWidget(
                      image:
                          'https://images.justwatch.com/poster/32640201/s718/vikings.%7Bformat%7D',
                    ),
                    ImageWidget(
                      image:
                          'http://tvseriesfinale.com/wp-content/uploads/2016/04/Game-of-Thrones-TV-show-on-HBO-season-6-premiere-canceled-or-renewed-e1460477908890.jpeg',
                    ),
                    ImageWidget(
                      image:
                          'https://m.media-amazon.com/images/M/MV5BYmQ4YWMxYjUtNjZmYi00MDQ1LWFjMjMtNjA5ZDdiYjdiODU5XkEyXkFqcGdeQXVyMTMzNDExODE5._V1_.jpg',
                    ),
                    ImageWidget(
                      image:
                          'https://m.media-amazon.com/images/M/MV5BZjkzMmU5MjMtODllZS00OTA5LTk2ZTEtNjdhYjZhMDA5ZTRhXkEyXkFqcGdeQXVyOTA3MTMyOTk@._V1_.jpg',
                    ),
                    ImageWidget(
                      image:
                          'https://assetscdn1.paytm.com/images/catalog/product/H/HO/HOMSHERLOCK-HOLHK-P63024784A1CC1B/1563111214645_0..jpg',
                    ),
                    ImageWidget(
                      image:
                          'https://m.media-amazon.com/images/I/81870wa24RL._AC_SL1500_.jpg',
                    ),
                    ImageWidget(
                      image:
                          'https://assets1.ignimgs.com/2016/01/15/deadpool2jpg-19c159.jpg?width=300&auto=webp',
                    ),
                    ImageWidget(
                      image:
                          'https://i0.wp.com/plexmx.info/wp-content/uploads/2021/10/FC3utLkWUAI-4ZG.jpg?ssl=1',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                color: Colors.white,
              ),
              label: '',
              backgroundColor: Colors.transparent,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.play_circle,
                color: Colors.grey,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
                color: Colors.grey,
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: SizedBox(
            width: 220,
            height: 300,
            child: Image.network(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

class ContainerWithImage extends StatelessWidget {
  const ContainerWithImage({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Icon(
                icon,
                color: Colors.white,
                size: 35,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.grey, fontFamily: 'Tilt Neon'),
        ),
      ],
    );
  }
}
