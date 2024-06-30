sealed class DeanAnnouncementState {}

final class DeanAnnouncementInitial extends DeanAnnouncementState {}

final class DeanAnnouncementLoading extends DeanAnnouncementState {}

final class DeanAnnouncementSuccess extends DeanAnnouncementState {}

final class DeanAnnouncementFailure extends DeanAnnouncementState {
  final String eMessage;

  DeanAnnouncementFailure({required this.eMessage});
}
