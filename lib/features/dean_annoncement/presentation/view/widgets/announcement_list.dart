import 'package:aast_restuarant/features/dean_annoncement/presentation/controller/dean_announcement_cubit_cubit/dean_announcement_cubit.dart';
import 'package:aast_restuarant/features/dean_annoncement/presentation/view/widgets/announcement_card.dart';
import 'package:flutter/material.dart';

class AnnouncementList extends StatelessWidget {
  const AnnouncementList({super.key,  this.enableDelete=true});
  final bool enableDelete;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: DeanAnnouncementCubit.get(context).deanAnnouncement.length,
      itemBuilder: (context, index) => AnnouncementCard(enableDelete: enableDelete,
          announcement:
              DeanAnnouncementCubit.get(context).deanAnnouncement[index]),
      separatorBuilder: (context, index) => const SizedBox(
        height: 5,
      ),
    );
  }
}
