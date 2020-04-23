import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class ImageSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
  
      child: CarouselSlider(
        height: 180.0,
        
        autoPlay: true,
        items: ["https://i2.wp.com/trending.pk/wp-content/uploads/2018/02/Jurassic.jpg?resize=707%2C707&ssl=1",
        "https://media.giphy.com/media/xUA7aNSYkwcHR6qmVG/giphy.gif",
        "https://www.islamabadscene.com/wp-content/uploads/2016/08/Epice-to-divine-platter-e1472293474394.jpg",
        "https://www.locodeals.in/merchant/deals/1563650248coupon_25Off.jpg",
        "https://www.netsolutions.com/insights/wp-content/uploads/2018/10/Zomato-online-food-delivery-app.jpg"].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(top:25,left: 2,right: 2,bottom: 2),
                 
                  // decoration: BoxDecoration(color: Colors.amber),
                   child: CachedNetworkImage(
                  imageUrl: i,
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.black12, BlendMode.colorBurn)),
                    ),
                  ),
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
                  
                  
                  
                  
                  );
            },
          );
        }).toList(),
      ),
    );
  }
}
