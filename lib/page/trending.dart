import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:assignment_01_cipherschools/components/course-compo/video.dart';
import 'package:assignment_01_cipherschools/constant/colorsize.dart';
import 'package:assignment_01_cipherschools/helper/theme-prov.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:switcher_button/switcher_button.dart';

class Trending extends StatefulWidget {
  const Trending({super.key, required this.isDark});
  final bool isDark;
  @override
  State<Trending> createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
  final List<VideoComponents> vidList = [
    VideoComponents(
        banner:
            'https://images.unsplash.com/photo-1680664777916-0e4735183619?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=749&q=80',
        category: 'Programming',
        title: 'Python and Django for Beginners',
        detail: 'A free python course for Beginners & a desciption sample too',
        tutor: 'Cipher School'),
    VideoComponents(
        banner:
            'https://images.unsplash.com/photo-1605379399642-870262d3d051?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1206&q=80',
        category: 'App Development',
        title: 'App Development with Flutter',
        detail: 'A free python course for Beginners & a desciption sample too',
        tutor: 'Aditya Thakur'),
    VideoComponents(
        banner:
            'https://images.unsplash.com/photo-1550439062-609e1531270e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
        category: 'Assignment Test',
        title: 'Free Mock IELTS',
        detail: 'A free python course for Beginners & a desciption sample too',
        tutor: 'Languify'),
  ];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ThemeSetting(widget.isDark),
        builder: (context, snapshot) {
          final setting = Provider.of<ThemeSetting>(context);
          final style = Theme.of(context).textTheme.titleSmall!.copyWith(
              fontSize: mediumT,
              color: setting.current ? Colors.white : darkC,
              fontWeight: FontWeight.w400);

          Color scaffoldColor = setting.current ? backgroundColor : whiteBg;
          Color appBarC = setting.current ? appBarColor : whiteBg;
          Color iconColor = setting.current ? Colors.white : darkC;
          return AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle(
              statusBarColor: appBarC, // transparent status bar
              systemNavigationBarColor: scaffoldColor, // navigation bar color
              statusBarIconBrightness: setting.current
                  ? Brightness.light
                  : Brightness.dark, // status bar icons' color
              systemNavigationBarIconBrightness:
                  Brightness.dark, //navigation bar icons' color
            ),
            child: Scaffold(
              backgroundColor: scaffoldColor,
              body: SafeArea(
                child: Column(
                  children: [
                    Material(
                      color: appBarC,
                      shadowColor: darkC.withOpacity(0.05),
                      elevation: 10,
                      child: Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(color: appBarC),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'CipherSchools',
                                style: style.copyWith(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          AntIcons.compassOutlined,
                                          color: iconColor,
                                          size: 13,
                                        ),
                                        const SizedBox(
                                          width: 3,
                                        ),
                                        Text(
                                          'Browse',
                                          style: style,
                                        ),
                                        const SizedBox(
                                          width: 3,
                                        ),
                                        Icon(
                                          AntIcons.downOutlined,
                                          color: iconColor,
                                          size: 13,
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  SwitcherButton(
                                    onColor: setting.current == false
                                        ? darkC
                                        : Colors.white,
                                    offColor: setting.current == false
                                        ? Colors.white
                                        : darkC,
                                    size: 30,
                                    onChange: (value) {
                                      final setting = Provider.of<ThemeSetting>(
                                          context,
                                          listen: false);
                                      setting.toogleTheme();
                                    },
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        AntIcons.bellOutlined,
                                        color: iconColor,
                                        size: 16,
                                      )),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        AntIcons.searchOutlined,
                                        color: iconColor,
                                        size: 16,
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              'Trending Courses',
                              style: style.copyWith(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: GridView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        childAspectRatio: 0.68),
                                itemCount: vidList.length,
                                itemBuilder: (context, index) => Padding(
                                      padding: const EdgeInsets.only(
                                          right: 20, bottom: 30),
                                      child: Material(
                                        color: appBarC,
                                        borderRadius: BorderRadius.circular(10),
                                        elevation: 15,
                                        shadowColor: appBarC.withOpacity(0.5),
                                        child: Container(
                                          height: 255,
                                          width: 200,
                                          decoration: BoxDecoration(
                                            color: appBarC,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 120,
                                                width: 200,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    10),
                                                            topRight:
                                                                Radius.circular(
                                                                    10)),
                                                    image: DecorationImage(
                                                        image: NetworkImage(
                                                            vidList[index]
                                                                .banner),
                                                        fit: BoxFit.cover)),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsets.all(
                                                      15.0),
                                                  child: SingleChildScrollView(
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          decoration: BoxDecoration(
                                                              color: appBarC
                                                                  .withOpacity(
                                                                      0.3),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4)),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .symmetric(
                                                                    vertical: 1,
                                                                    horizontal:
                                                                        3),
                                                            child: Text(
                                                              vidList[index]
                                                                  .category,
                                                              style: style.copyWith(
                                                                  color:
                                                                      primaryColor,
                                                                  fontSize: 9),
                                                            ),
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          height: 5,
                                                        ),
                                                        Text(
                                                          vidList[index].title,
                                                          maxLines: 1,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: style.copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 17),
                                                        ),
                                                        const SizedBox(
                                                          height: 5,
                                                        ),
                                                        Text(
                                                          vidList[index].detail,
                                                          maxLines: 2,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: style,
                                                        ),
                                                        const SizedBox(
                                                          height: 15,
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            CircleAvatar(
                                                              backgroundColor:
                                                                  iconColor,
                                                              radius: 8,
                                                            ),
                                                            const SizedBox(
                                                              width: 5,
                                                            ),
                                                            Text(
                                                              vidList[index]
                                                                  .tutor,
                                                              style: style,
                                                            ),
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    )),
                          ),
                        ],
                      ),
                    ))
                  ],
                ),
              ),
            ),
          );
        });
  }
}
