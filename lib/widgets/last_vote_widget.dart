import 'package:flutter/material.dart';
import 'package:secret_story/config/utils.dart';
import 'package:secret_story/data.dart';
import 'package:secret_story/modeles/vote.dart';
import 'package:secret_story/screens/vote_details.dart';
import 'package:secret_story/widgets/appbutton.dart';
import 'package:secret_story/widgets/circle_images_stack.dart';

class LastVoteWidget extends StatelessWidget {
  const LastVoteWidget({
    super.key,
    required this.vote,
  });
  final Vote vote;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: grey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Vote de la semaine ${vote.id}',
                  style: title1.copyWith(fontSize: 16, color: rougeBordeau),
                ),
                Text(
                  'Clôturé',
                  style: title1.copyWith(
                      fontSize: 16,
                      color: rougeBordeau,
                      fontWeight: FontWeight.w200),
                )
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 70 * vote.candidats.length.toDouble(),
                  height: 40,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 1,
                      itemBuilder: (_, index) {
                        return Row(
                          children: [
                            for (var i = 0; i < vote.candidats.length - 1; i++)
                              Row(
                                children: [
                                  Text(
                                    ' ${dummyData.values.where((element) => element.id == vote.candidats[i].candidatId).first.prenom.toUpperCase()} ',
                                    overflow: TextOverflow.ellipsis,
                                    style: body1.copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                  ),
                                  Text(
                                    'vs',
                                    style: body1.copyWith(
                                        fontWeight: FontWeight.w200,
                                        fontSize: 10),
                                  ),
                                ],
                              ),
                            Text(
                              ' ${dummyData.values.where((element) => element.id == vote.candidats.last.candidatId).first.prenom.toUpperCase()} ',
                              overflow: TextOverflow.ellipsis,
                              style: body1.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                            ),
                          ],
                        );
                      }),
                ),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleImageStack(
                  candidats: vote.candidats,
                ),
                AppButton(
                    method: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => VoteDetail(
                            vote: vote,
                          ),
                        ),
                      );
                    },
                    title: 'VOIR LES DETAILS'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
