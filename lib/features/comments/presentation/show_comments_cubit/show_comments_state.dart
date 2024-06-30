sealed class ShowCommentsState {}

final class ShowCommentsInitial extends ShowCommentsState {}

final class ShowCommentsLoading extends ShowCommentsState {}

final class ShowCommentsSuccess extends ShowCommentsState {}

final class ShowCommentsFailure extends ShowCommentsState {
  final String eMessage;

  ShowCommentsFailure({required this.eMessage});
}
