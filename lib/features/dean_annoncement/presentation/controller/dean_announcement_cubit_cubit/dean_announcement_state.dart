sealed class DeanAnnouncementState {}

final class DeanAnnouncementInitial extends DeanAnnouncementState {}

final class DeanAnnouncementLoading extends DeanAnnouncementState {}

final class DeanAnnouncementSuccess extends DeanAnnouncementState {}

final class DeanAnnouncementFailure extends DeanAnnouncementState {
  final String eMessage;

  DeanAnnouncementFailure({required this.eMessage});
}

final class GetDeanAnnouncementLoading extends DeanAnnouncementState {}

final class GetDeanAnnouncementSuccess extends DeanAnnouncementState {}

final class GetDeanAnnouncementFailure extends DeanAnnouncementState {
  final String eMessage;

  GetDeanAnnouncementFailure({required this.eMessage});
}

final class DeleteDeanAnnouncementLoading extends DeanAnnouncementState {}

final class DeleteDeanAnnouncementSuccess extends DeanAnnouncementState {}

final class DeleteDeanAnnouncementFailure extends DeanAnnouncementState {
  final String eMessage;

  DeleteDeanAnnouncementFailure({required this.eMessage});
}
