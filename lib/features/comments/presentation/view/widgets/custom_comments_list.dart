import 'package:aast_restuarant/features/comments/presentation/show_comments_cubit/show_comments_cubit.dart';
import 'package:aast_restuarant/features/comments/presentation/view/widgets/custom_comment_card.dart';
import 'package:flutter/material.dart';

class CustomCommentsList extends StatelessWidget {
  const CustomCommentsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: ShowCommentsCubit.get(context).studentComments.length,
      itemBuilder: (context, index) => CustomCommentCard(
        comment: ShowCommentsCubit.get(context).studentComments[index],
      ),
      separatorBuilder: (context, index) => const SizedBox(
        height: 5,
      ),
    );
  }
}
