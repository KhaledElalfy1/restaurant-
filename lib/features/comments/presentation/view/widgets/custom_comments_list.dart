import 'package:aast_restuarant/features/comments/presentation/view/widgets/custom_comment_card.dart';
import 'package:flutter/material.dart';

class CustomCommentsList extends StatelessWidget {
  const CustomCommentsList({super.key});
  
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) => CustomCommentCard(
        author: 'author',
        comment: 'comment',
        delete: () {},
      ),
      separatorBuilder: (context, index) => const SizedBox(
        height: 5,
      ),
    );
  }
}
