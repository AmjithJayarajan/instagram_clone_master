import 'package:flutter/material.dart';
import 'package:instagram/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlackColor,
      appBar: appBar(),
      bottomNavigationBar: bottomNavBar(),
      body: body(context),
    );
  }

  PreferredSizeWidget appBar() {
    return AppBar(
      backgroundColor: kBlackColor,
      centerTitle: false,
      title: Row(
        children: [
          Container(
            width: 103,
            height: 29,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/icon_logo.png',
                ),
              ),
            ),
          ),
          Spacer(),
          amjith_widget(image: 'assets/icon_add.png'),
          amjith_widget(image: 'assets/icon_send.png')
          
        ],
      ),
    );
  }

  Widget bottomNavBar() {
    return Container(
      color: kLineColor,
      padding: EdgeInsets.only(
        top: 1,
      ),
      child: Container(
        padding: EdgeInsets.only(
          top: 15,
        ),
        color: kBlackColor,
        child: BottomNavigationBar(
          backgroundColor: kBlackColor,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          elevation: 1,
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icon_home.png',
                    ),
                  ),
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: 'Search',
              icon: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icon_search.png',
                    ),
                  ),
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: 'Reels',
              icon: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icon_reels.png',
                    ),
                  ),
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: 'Notifications',
              icon: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icon_love.png',
                    ),
                  ),
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'amji_logo.png',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget body(BuildContext context) {
    return ListView(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              StoryItem(
                imageUrl: 'your_story.png',
                title: 'your story',
              
              ),
              StoryItem(
                imageUrl: 'shamna_1.png',
                title: 'shamnakasim',
              ),
              StoryItem(
                imageUrl: 'dani_story.jpg',
                 title: 'akadanidaniels',
                 ),
                 StoryItem(
                  imageUrl: 'clutch_story.jpg', 
                  title: 'theclutchless',
                  ),
                  StoryItem(
                    imageUrl: 'dr_story.jpg',
                     title: 'dr_chromental'
                     ),
                  StoryItem(
                    imageUrl: 'atheist_story.jpg',
                   title: 'atheistkerala',
                   ),
                  StoryItem(
                   imageUrl: 'midhun_2.png',
                   title: 'mithun_mithu23',
                   ),
                  StoryItem(
                imageUrl: 'luminar_3.png',
                title: 'luminartechnolab',
              ),
              StoryItem(
                imageUrl: 'milly_4.png',
                title: 'milliebobbybrown',
              ),
              StoryItem(
                imageUrl: 'sajanka_5.png',
                title: 'sajankamusic',
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          width: double.infinity,
          height: 1,
          color: kLineColor, 
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
            vertical: defaultMargin,
          ),
          child: Row(
            children: [
              Image.asset(
                'chethri_logo.png',
                width: 40,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'chetri_sunil',
                style: whiteTextStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
              Spacer(),
              Icon(
                Icons.more_vert,
                color: kWhiteColor,
              ),
            ],
          ),
        ),
        Image.asset(
          'chethri_pic.png',
          fit: BoxFit.fitWidth,
          width: double.infinity,
        ),
        Container(
          margin: EdgeInsets.symmetric(
            vertical: 8,
            horizontal: defaultMargin,
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/icon_love.png',
                width: 24,
              ),
              SizedBox(
                width: 16,
              ),
              Image.asset(
                'assets/icon_comment.png',
                width: 24,
              ),
              SizedBox(
                width: 16,
              ),
              Image.asset(
                'assets/icon_send.png',
                width: 24,
              ),
              Spacer(),
              Image.asset(
                'assets/icon_save.png',
                width: 24,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/image_like.png',
                    width: 32,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'liked by vineeth_c_k ',
                    style: whiteTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                  Text(
                    ' and  99,86,765 others',
                    style: whiteTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    'chetri_sunil',
                    style: whiteTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    '  Thanks for the moments',
                    style: whiteTextStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'view all 10,984 comments',
                style: greyTextStyle,
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Image.asset(
                    'amji_logo.png',
                    width: 26,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'comment as m._ji_',
                    style: greyTextStyle,
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
            vertical: defaultMargin,
          ),
          child: Row(
            children: [
              Image.asset(
                'kaztro_logo.png',
                width: 42,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'ig.kaztrogaming',
                style: whiteTextStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
              Spacer(),
              Icon(
                Icons.more_vert,
                color: kWhiteColor,
              ),
            ],
          ),
        ),
        Image.asset(
          'kaztro_pic.png',
          fit: BoxFit.fitWidth,
          width: double.infinity,
        ),
        Container(
          margin: EdgeInsets.symmetric(
            vertical: 8,
            horizontal: defaultMargin,
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/icon_love.png',
                width: 24,
              ),
              SizedBox(
                width: 16,
              ),
              Image.asset(
                'assets/icon_comment.png',
                width: 24,
              ),
              SizedBox(
                width: 16,
              ),
              Image.asset(
                'assets/icon_send.png',
                width: 24,
              ),
              Spacer(),
              Image.asset(
                'assets/icon_save.png',
                width: 24,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/image_like.png',
                    width: 32,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'liked by psycho_blind ',
                    style: whiteTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                  Text(
                    ' and  1,72,872 others',
                    style: whiteTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    'ig.kaztrogaming',
                    style: whiteTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    '  And I finally bought a Mercedes.',
                    style: whiteTextStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'View all 2,382 comments',
                style: greyTextStyle,
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Image.asset(
                    'amji_logo.png',
                    width: 26,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'comment as m._ji_',
                    style: greyTextStyle,
                  ),
                ],
              ),
            ],
          ),
        ),

        //from this

         SizedBox(
          height: 10,
        ),
        Container(
          width: double.infinity,
          height: 1,
          color: kLineColor,
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
            vertical: defaultMargin,
          ),
          child: Row(
            children: [
              Image.asset(
                'psycho_logo.png',
                width: 40,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'ig.psychoblind',
                style: whiteTextStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
              Spacer(),
              Icon(
                Icons.more_vert,
                color: kWhiteColor,
              ),
            ],
          ),
        ),
        Image.asset(
          'psycho_pic.png',
          fit: BoxFit.fitWidth,
          width: double.infinity,
        ),
        Container(
          margin: EdgeInsets.symmetric(
            vertical: 8,
            horizontal: defaultMargin,
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/icon_love.png',
                width: 24,
              ),
              SizedBox(
                width: 16,
              ),
              Image.asset(
                'assets/icon_comment.png',
                width: 24,
              ),
              SizedBox(
                width: 16,
              ),
              Image.asset(
                'assets/icon_send.png',
                width: 24,
              ),
              Spacer(),
              Image.asset(
                'assets/icon_save.png',
                width: 24,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/image_like.png',
                    width: 32,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'liked by blind_pablo ',
                    style: whiteTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                  Text(
                    'and 87,86,765 others',
                    style: whiteTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    'ig.psychoblind',
                    style: whiteTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    '  Antagonist',
                    style: whiteTextStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'view all 101,984 comments',
                style: greyTextStyle,
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Image.asset(
                    'amji_logo.png',
                    width: 26,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'comment as m._ji_',
                    style: greyTextStyle,
                  ),
                ],
              ),
            ],
          ),
        ),
//to this
        SizedBox(
          height: 10,
        ),
        Container(
          width: double.infinity,
          height: 1,
          color: kLineColor,
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
            vertical: defaultMargin,
          ),
          child: Row(
            children: [
              Image.asset(
                'ajio_logo.jpg',
                width: 40,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'AJIO',
                style: whiteTextStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
              Spacer(),
              Icon(
                Icons.more_vert,
                color: kWhiteColor,
              ),
            ],
          ),
        ),
        Image.asset(
          'ajio_pic.jpg',
          fit: BoxFit.fitWidth,
          width: double.infinity,
        ),
        Container(
          margin: EdgeInsets.symmetric(
            vertical: 8,
            horizontal: defaultMargin,
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/icon_love.png',
                width: 24,
              ),
              SizedBox(
                width: 16,
              ),
              Image.asset(
                'assets/icon_comment.png',
                width: 24,
              ),
              SizedBox(
                width: 16,
              ),
              Image.asset(
                'assets/icon_send.png',
                width: 24,
              ),
              Spacer(),
              Image.asset(
                'assets/icon_save.png',
                width: 24,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/image_like.png',
                    width: 32,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'liked by pranav_mlk ',
                    style: whiteTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                  Text(
                    'and 4,568 others',
                    style: whiteTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    'ajio',
                    style: whiteTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    '  New Arrivals',
                    style: whiteTextStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'view all 108 comments',
                style: greyTextStyle,
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Image.asset(
                    'amji_logo.png',
                    width: 26,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'comment as m._ji_',
                    style: greyTextStyle,
                  ),
                ],
              ),
            ],
          ),
        ),

        SizedBox(
          height: 10,
        ),
        Container(
          width: double.infinity,
          height: 1,
          color: kLineColor,
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
            vertical: defaultMargin,
          ),
          child: Row(
            children: [
              Image.asset(
                'damu_logo.jpg',
                width: 40,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'dashamoolammedia',
                style: whiteTextStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
              Spacer(),
              Icon(
                Icons.more_vert,
                color: kWhiteColor,
              ),
            ],
          ),
        ),
        Image.asset(
          'damu_pic.jpg',
          fit: BoxFit.fitWidth,
          width: double.infinity,
        ),
        Container(
          margin: EdgeInsets.symmetric(
            vertical: 8,
            horizontal: defaultMargin,
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/icon_love.png',
                width: 24,
              ),
              SizedBox(
                width: 16,
              ),
              Image.asset(
                'assets/icon_comment.png',
                width: 24,
              ),
              SizedBox(
                width: 16,
              ),
              Image.asset(
                'assets/icon_send.png',
                width: 24,
              ),
              Spacer(),
              Image.asset(
                'assets/icon_save.png',
                width: 24,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/image_like.png',
                    width: 32,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'liked by adithyan_kr ',
                    style: whiteTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                  Text(
                    'and 86,765 others',
                    style: whiteTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    'dashamoolammedia',
                    style: whiteTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    '  കലിപ്പാണ് ഏട്ടായിയുടെ മെയിൻ  ',
                    style: whiteTextStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'view all 84 comments',
                style: greyTextStyle,
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Image.asset(
                    'amji_logo.png',
                    width: 26,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'comment as m._ji_',
                    style: greyTextStyle,
                  ),
                ],
              ),
            ],
          ),
        ),

      SizedBox(
          height: 10,
        ),
        Container(
          width: double.infinity,
          height: 1,
          color: kLineColor,
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
            vertical: defaultMargin,
          ),
          child: Row(
            children: [
              Image.asset(
                'deep_logo.jpg',
                width: 40,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'the_deep_thinker',
                style: whiteTextStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
              Spacer(),
              Icon(
                Icons.more_vert,
                color: kWhiteColor,
              ),
            ],
          ),
        ),
        Image.asset(
          'deep_pic.jpg',
          fit: BoxFit.fitWidth,
          width: double.infinity,
        ),
        Container(
          margin: EdgeInsets.symmetric(
            vertical: 8,
            horizontal: defaultMargin,
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/icon_love.png',
                width: 24,
              ),
              SizedBox(
                width: 16,
              ),
              Image.asset(
                'assets/icon_comment.png',
                width: 24,
              ),
              SizedBox(
                width: 16,
              ),
              Image.asset(
                'assets/icon_send.png',
                width: 24,
              ),
              Spacer(),
              Image.asset(
                'assets/icon_save.png',
                width: 24,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/image_like.png',
                    width: 32,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'liked by pruthvi_raj ',
                    style: whiteTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                  Text(
                    'and 31,564 others',
                    style: whiteTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    'thedeepthinker',
                    style: whiteTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    ' ❤ ',
                    style: whiteTextStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'view all 804 comments',
                style: greyTextStyle,
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Image.asset(
                    'amji_logo.png',
                    width: 26,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'comment as m._ji_',
                    style: greyTextStyle,
                  ),
                ],
              ),
            ],
          ),
        ),

         SizedBox(
          height: 10,
        ),
        Container(
          width: double.infinity,
          height: 1,
          color: kLineColor,
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
            vertical: defaultMargin,
          ),
          child: Row(
            children: [
              Image.asset(
                'oc_logo.jpg',
                width: 40,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'offencive_trolls',
                style: whiteTextStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
              Spacer(),
              Icon(
                Icons.more_vert,
                color: kWhiteColor,
              ),
            ],
          ),
        ),
        Image.asset(
          'oc_pic.jpg',
          fit: BoxFit.fitWidth,
          width: double.infinity,
        ),
        Container(
          margin: EdgeInsets.symmetric(
            vertical: 8,
            horizontal: defaultMargin,
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/icon_love.png',
                width: 24,
              ),
              SizedBox(
                width: 16,
              ),
              Image.asset(
                'assets/icon_comment.png',
                width: 24,
              ),
              SizedBox(
                width: 16,
              ),
              Image.asset(
                'assets/icon_send.png',
                width: 24,
              ),
              Spacer(),
              Image.asset(
                'assets/icon_save.png',
                width: 24,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/image_like.png',
                    width: 32,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'liked by quite_differ',
                    style: whiteTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                  Text(
                    ' and 48,654 others',
                    style: whiteTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    'offencivetrolls',
                    style: whiteTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    ' ശോ.... എൻ്റെ ഒരു കാര്യം',
                    style: whiteTextStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'view all 325 comments',
                style: greyTextStyle,
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Image.asset(
                    'amji_logo.png',
                    width: 26,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'comment as m._ji_',
                    style: greyTextStyle,
                  ),
                ],
              ),
            ],
          ),
        ),

      ],
    );
  }
}

class amjith_widget extends StatelessWidget {
  const amjith_widget({
    Key? key,
     this.image
  }) : super(key: key);
final image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      margin: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            image,
          ),
        ),
      ),
    );
  }
}

class StoryItem extends StatelessWidget {
  final String imageUrl;
  final String title;

  const StoryItem({
    Key? key,
    required this.imageUrl,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: defaultMargin,
      ),
      child: Column(
        children: [
          Container(
            width: 90,
            height: 90,
            margin: EdgeInsets.only(
              bottom: 13,
            ),
          child:Image.asset(
                  imageUrl,
                  fit:BoxFit.fill
                ),
          ),
          Text(
            title,
            style: whiteTextStyle.copyWith(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
