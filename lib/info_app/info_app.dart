import 'package:flutter/material.dart';
import 'package:gdsc2/info_app/contact_item.dart';
import 'package:gdsc2/info_app/product_item.dart';

class InfoApp extends StatelessWidget {
  InfoApp({Key? key}) : super(key: key);
  //TODO create button theme
  bool isDark = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.black87,
          child: Padding(
            padding: EdgeInsets.all(17),
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage('assets/cover.jpeg'),
                  ),
                ),

                /// header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // Container(
                    //     width: 160,
                    //     height: 160,
                    //     decoration: BoxDecoration(
                    //         image: const DecorationImage(
                    //           image: NetworkImage(
                    //             'https://media.licdn.com/dms/image/C5603AQFThfVLHKoOJA/profile-displayphoto-shrink_200_200/0/1651069845846?e=1684368000&v=beta&t=dIzWZYXs9CjFg-hjd3jGcDlzEI7kM-vEUPxL4iP2EJY',
                    //           ),
                    //           fit: BoxFit.cover,
                    //         ),
                    //         borderRadius: BorderRadius.circular(80))),
                    const CircleAvatar(
                      radius: 80,
                      backgroundImage: NetworkImage(
                        'https://media.licdn.com/dms/image/C5603AQFThfVLHKoOJA/profile-displayphoto-shrink_200_200/0/1651069845846?e=1684368000&v=beta&t=dIzWZYXs9CjFg-hjd3jGcDlzEI7kM-vEUPxL4iP2EJY',
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mina Faried",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Flutter Developer',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    )
                  ],
                ),

                ///title
                _getTitle('Contacts'),

                ///contacts
                const ContactItem(
                  icon: Icons.mail_outline,
                  url: 'https://www.linkedin.com/in/minafaried',
                ),
                const SizedBox(
                  height: 20,
                ),
                const ContactItem(
                  icon: Icons.account_circle_outlined,
                  url: 'https://www.linkedin.com/in/minafaried',
                ),
                const SizedBox(
                  height: 20,
                ),
                const ContactItem(
                  icon: Icons.adb_outlined,
                  url: 'https://www.linkedin.com/in/minafaried',
                ),

                ///divider
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: const Divider(
                    thickness: 1.3,
                    color: Colors.white,
                  ),
                ),

                ///title
                _getTitle('Products'),

                ///products
                ProductItem(),
                ProductItem(),
                ProductItem(),
                ProductItem(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _getTitle(String title) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Text(
          '$title :',
          style: TextStyle(
              fontWeight: FontWeight.w700, fontSize: 25, color: Colors.white),
        ),
      );
}
