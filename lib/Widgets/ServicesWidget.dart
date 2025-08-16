import 'package:flutter/material.dart';
import 'rating.dart';

class ServicesWidget extends StatelessWidget {
  const ServicesWidget({
    super.key,
    required this.imageURL,
    required this.avatar,
    required this.name,
    required this.jobTitle,
    required this.rate,
    required this.bio,
  });
  final String imageURL;
  final String avatar;
  final String name;
  final String jobTitle;
  final String rate;
  final String bio;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Stack(
          alignment: Alignment.centerRight,
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 197,
              height: 154,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(imageURL),
                ),
              ),
            ),
            Positioned(
              right: -170,

              child: Container(
                width: 216,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),

                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(avatar),
                        radius: 19,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              jobTitle,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(0xff827BEB),
                              ),
                            ),
                            Text(
                              bio,
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff6B6B6B),
                              ),
                            ),
                            SizedBox(height: 4,),

                            Row(
                              children: [
                                Rating(rate: rate),
                                SizedBox(width: 5),
                                Expanded(
                                  child: SizedBox(
                                    width: 102,
                                    height: 31,

                                    child: TextButton(
                                      onPressed: () {},
                                      style: TextButton.styleFrom(
                                        // padding: EdgeInsetsGeometry.only(bottom: 1),
                                        backgroundColor: const Color(
                                          0xFF7C6FF6,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                        ),
                                      ),
                                      child: const Text(
                                        "Book Now",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
