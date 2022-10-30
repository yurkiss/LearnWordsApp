import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:learnwordsapp/features/list_item_details/domain/usecase/create_list_usecase.dart';
import 'package:learnwordsapp/features/list_item_details/presentation/model/list_item_event.dart';
import 'package:learnwordsapp/features/list_item_details/presentation/model/list_item_state.dart';

@injectable
class ListItemBloc extends Bloc<ListItemEvent, ListItemState> {
  final CreateListUsecase _createListUsecase;

  ListItemBloc(CreateListUsecase createListUsecase)
      : _createListUsecase = createListUsecase,
        super(ListItemState.initial()) {
    on<SaveListItemEvent>(
        (SaveListItemEvent event, Emitter<ListItemState> emit) async {
      if (event.list.id < 0) {
        await _createListUsecase.run(
            params: CreateListParams.create(
                list: event.list.copyWith(title: event.title)));
      } else {}
    });
  }
}
