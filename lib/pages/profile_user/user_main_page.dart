import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_temp_1/widgets/text/text_header.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../widgets/signin/user_signout.dart';
import '../../widgets/text/text_common.dart';
import '../../widgets/user/circle_image_user.dart';
import '../signin_page.dart';

class UserMainPage extends StatefulWidget {
  const UserMainPage({Key? key}) : super(key: key);

  @override
  State<UserMainPage> createState() => _UserMainPageState();
}

class _UserMainPageState extends State<UserMainPage> {
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: auth.userChanges(),
        builder: (context, snapshot) {
          return SafeArea(
              child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  FontAwesomeIcons.chevronLeft,
                  color: Colors.black87,
                ),
              ),
            ),
            body: Container(
              color: Colors.white,
              height: double.infinity,
              width: double.maxFinite,
              child: ListView(
                children: [
                  //
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child:
                        const TextHeader(data: 'บัญชี', color: Colors.black87),
                  ),
                  //
                  snapshot.hasData
                      ?
                      //User Image
                      Container(
                          margin: const EdgeInsets.only(top: 20, bottom: 10),
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          width: double.maxFinite,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleImageUser(
                                imageUrl: snapshot.data?.photoURL,
                                route: const UserMainPage(),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              SizedBox(
                                  height: 60,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TextCommon(
                                          data: '${snapshot.data?.displayName}',
                                          weight: FontWeight.bold),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      TextCommon(
                                        data: '${snapshot.data?.email}',
                                        size: 14,
                                        color: Colors.grey[400],
                                      )
                                    ],
                                  )),
                            ],
                          ),
                        )
                      //
                      : Container(),
                  //
                  snapshot.hasData
                      ? Container(
                          margin: const EdgeInsets.only(bottom: 15),
                          width: double.maxFinite,
                          child: Column(
                            children: [
                              //
                              Divider(color: Colors.grey[100], thickness: 10),
                              //
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                width: double.maxFinite,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: TextButton(
                                      onPressed: () {
                                        setState(() async {
                                          await auth.currentUser
                                              ?.delete()
                                              .then((value) {
                                            //
                                            Fluttertoast.showToast(
                                                msg: 'Delete Complete.',
                                                gravity: ToastGravity.BOTTOM,
                                                timeInSecForIosWeb: 1,
                                                fontSize: 14);
                                            //
                                          });
                                        });
                                      },
                                      child: const TextCommon(
                                        data: 'ลบบัญชีผู้ใช้',
                                        color: Colors.red,
                                      )),
                                ),
                              ),
                              //
                              Divider(color: Colors.grey[100], thickness: 10),
                              //
                            ],
                          ),
                        )
                      : Container(),

                  //
                  Container(
                    margin: const EdgeInsets.only(bottom: 15),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    height: 50,
                    width: double.maxFinite,
                    child: snapshot.hasData
                        ?
                        //
                        OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                side: const BorderSide(
                                  width: 2,
                                  color: Colors.black87,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25))),
                            onPressed: () {
                              signOut();
                            },
                            child: const TextCommon(
                              data: 'ออกจากระบบ',
                            ))
                        //
                        : OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                side: const BorderSide(
                                  width: 2,
                                  color: Colors.black87,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25))),
                            onPressed: () {
                              showModalBottomSheet(
                                useRootNavigator: true,
                                isScrollControlled: true,
                                context: context,
                                builder: (context) {
                                  return const SigninPage();
                                },
                              );
                            },
                            child: const TextCommon(
                              data: 'เข้าสู่ระบบ',
                            )),
                  ),
                ],
              ),
            ),
          ));
        });
  }
}
