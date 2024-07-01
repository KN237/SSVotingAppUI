import 'package:flutter/material.dart';
import 'package:secret_story/config/utils.dart';
import 'package:secret_story/data.dart';
import 'package:secret_story/widgets/appbar_helper.dart';
import 'package:secret_story/widgets/custom_drawer.dart';
import 'package:secret_story/widgets/last_vote_widget.dart';

class LastVote extends StatefulWidget {
  const LastVote({super.key});

  @override
  State<LastVote> createState() => _LastVoteState();
}

class _LastVoteState extends State<LastVote> {
  final _key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: const CustomDrawer(),
      appBar: AppBar(
        leading: AppBarMenuButton(
          myKey: _key,
        ),
        backgroundColor: grey,
        title: const AppBarHeroLogo(),
        actions: const [
          AppBarAction(),
        ],
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: appBgGradient,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              addVerticalSpace(60),
              Text(
                'Les votes précédents',
                style: title1.copyWith(color: rougeBordeau),
              ),
              addVerticalSpace(40),
              SizedBox(
                width: 300,
                height: 200 * lastVotes.length.toDouble(),
                child: ListView.builder(
                    itemCount: lastVotes.length,
                    itemBuilder: (_, index) {
                      return LastVoteWidget(
                        vote: lastVotes[index],
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
