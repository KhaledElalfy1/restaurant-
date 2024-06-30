sealed class DeleteCommentState {}

final class DeleteCommentInitial extends DeleteCommentState {}

final class DeleteCommentLoading extends DeleteCommentState {}

final class DeleteCommentSuccess extends DeleteCommentState {}

final class DeleteCommentFailure extends DeleteCommentState {
  final String eMessage;

  DeleteCommentFailure({required this.eMessage});
}
