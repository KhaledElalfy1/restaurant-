sealed class FeedBackState {}

final class FeedBackInitial extends FeedBackState {}

final class SendFeedBackLoading extends FeedBackState {}

final class SendFeedBackSuccess extends FeedBackState {}

final class SendFeedBackFailure extends FeedBackState {
  final String eMessage;

  SendFeedBackFailure({required this.eMessage});
}
