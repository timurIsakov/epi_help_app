import 'package:epi_help_app/utils/asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../entity/content_card_entity.dart';
import '../widgets/content_card_widget.dart';

class ContentScreen extends StatefulWidget {
  const ContentScreen({super.key});

  @override
  State<ContentScreen> createState() => _ContentScreenState();
}

class _ContentScreenState extends State<ContentScreen> {
  List<ContentCardEntity> listEntity = [
    ContentCardEntity(
        Asset.tPostImage,
        "Epilepsy and hot weather",
        "Summer is here and the days are getting hotter. For some people this could mean more seizures. Learn about the link between epile...",
        "Wed, 21 Apr, 2021"),
    ContentCardEntity(
        Asset.tPostImage,
        "Epilepsy and hot weather",
        "Summer is here and the days are getting hotter. For some people this could mean more seizures. Learn about the link between epile...",
        "Wed, 21 Apr, 2021"),
    ContentCardEntity(
        Asset.tPostImage,
        "Epilepsy and hot weather",
        "Summer is here and the days are getting hotter. For some people this could mean more seizures. Learn about the link between epile...",
        "Wed, 21 Apr, 2021"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20).r,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 33.h),
              Text(
                "Content",
                style: TextStyle(fontSize: 28.sp, fontWeight: FontWeight.w800),
              ),
              SizedBox(height: 54.h),
              ...List.generate(
                  listEntity.length,
                  (index) => Padding(
                        padding: const EdgeInsets.only(bottom: 20).r,
                        child: ContentCardWidget(entity: listEntity[index]),
                      ))
            ],
          ),
        ),
      )),
    );
  }
}
