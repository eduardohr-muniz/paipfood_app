import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:paipfood_app/app/core/extensions/themes/ext_theme.dart';

class BannerSlide extends StatelessWidget {
  const BannerSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: SizedBox(
        height: MediaQuery.of(context).size.width / 3,
        child: ImageSlideshow(
          autoPlayInterval: 4000,
          indicatorColor: context.primaryColor,
          isLoop: true,
          onPageChanged: (_) {},
          children: const [
            ImageBanner(urlImage: "https://tse4.mm.bing.net/th?id=OIP.LsqFCesm4mZThSffHpn-eQHaCf&pid=Api&P=0"),
            ImageBanner(urlImage: "https://tse1.mm.bing.net/th?id=OIP.5O0Dv6rMGIsPN0sVMvb5IgHaDt&pid=Api&P=0"),
            ImageBanner(urlImage: "https://tse4.mm.bing.net/th?id=OIP.7Ld2jyxR6OVsF1k96mpy1AHaCp&pid=Api&P=0"),
          ],
        ),
      ),
    );
  }
}

//*******************************************************************

class ImageBanner extends StatelessWidget {
  final String urlImage;
  const ImageBanner({
    Key? key,
    required this.urlImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(image: NetworkImage(urlImage), fit: BoxFit.cover)),
    );
  }
}
