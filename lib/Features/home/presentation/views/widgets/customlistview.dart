import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../../../core/core/utils/assets.dart';

class CListViewItem extends StatelessWidget{
  const CListViewItem ({Key?key, required this.imageUrl}):super(key: key) ;
final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16 ),
      child: AspectRatio(
        aspectRatio:2.5/4,
        child:CachedNetworkImage(
          fit: BoxFit.fill,
         // placeholder: (context, url) => const Center(child:CircularProgressIndicator()),
          imageUrl: imageUrl,

        errorWidget: (context, url, error) => Icon(Icons.downloading) ,)
      ),
    );
  }

}