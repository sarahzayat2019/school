import 'package:bloc/bloc.dart';

import 'book_details_event.dart';
import 'book_details_state.dart';

class BookDetailsBloc extends Bloc<BookDetailsEvent, BookDetailsState> {
  BookDetailsBloc() : super(BookDetailsState().init());

  @override
  Stream<BookDetailsState> mapEventToState(BookDetailsEvent event) async* {
    if (event is InitEvent) {
      yield await init();
    }
  }

  Future<BookDetailsState> init() async {
    return state.clone();
  }
}
