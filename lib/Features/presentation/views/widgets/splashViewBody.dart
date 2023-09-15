import 'package:booklyapp/Features/presentation/views/widgets/slidingtext.dart';
import 'package:booklyapp/constant.dart';
import 'package:booklyapp/core/core/utils/approuter.dart';
import 'package:booklyapp/core/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:booklyapp/Features/home/presentation/views/homeview.dart';
import 'package:go_router/go_router.dart';



class splashViewBody extends StatefulWidget{
  const splashViewBody({super.key});

  @override
  State<splashViewBody> createState() => _splashViewBodyState();
}

class _splashViewBodyState extends State<splashViewBody> with SingleTickerProviderStateMixin{
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;



  @override
  void initState() {

    super.initState();
    initSlidingAnimation();
    navigatetohome();

  }
  @override

  void dispose() {

    super.dispose();
    animationController.dispose();
  }
  void initSlidingAnimation(){
    animationController=AnimationController(vsync: this,duration: const Duration(seconds: 1));
    slidingAnimation=Tween<Offset>(begin: const Offset(0,10),end:Offset.zero).animate(animationController);

  }
  void navigatetohome(){
    Future.delayed(const Duration(seconds: 3),(){
      GoRouter.of(context).push(AppRouter.KHomeView);
    });
  }
  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:[
           Image.asset(AssestsData.logo),
         const SizedBox(
           height: 4,
         ),
        SlidingText(slidingAnimation: slidingAnimation),

    ], );
  }
}
