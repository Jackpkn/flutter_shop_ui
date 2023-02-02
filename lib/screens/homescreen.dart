import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopapp_ui/constant.dart';
import 'package:shopapp_ui/model/category.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List demo = [
      OutlinedButton(
        onPressed: () {},
        child: const Text('jack'),
      ),
      OutlinedButton(
        onPressed: () {},
        child: const Text('jack'),
      ),
      OutlinedButton(
        onPressed: () {},
        child: const Text('jack'),
      ),
      OutlinedButton(
        onPressed: () {},
        child: const Text('jack'),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/menu_svg'),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/Notification.svg',
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Text(
            'Explore',
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
          ),
          const Text(
            'best Outhits for you',
            style: TextStyle(fontSize: 18),
          ),
          Form(
            child: TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: SvgPicture.asset('assets/icons/Search.svg'),
                suffixIcon: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(defaultBorderRadius),
                      ),
                    ),
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/Filer.svg',
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: List.generate(4, (index) {
              return OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(defaultBorderRadius),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Column(
                  children: [
                    Icon(
                      demo_Category[index].icon as IconData,
                    ),
                    Text(demo_Category[index].title),
                  ],
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}

//? model => pic List< map<string, dynamic>  , name
//! List< model> category =[{'pic' : svgPicture},]
OutlinedButton outlinedButton(VoidCallback press, String title, IconData icon) {
  return OutlinedButton(
    onPressed: press,
    child: Column(
      children: [
        Icon(icon),
        Text(title),
      ],
    ),
  );
}
