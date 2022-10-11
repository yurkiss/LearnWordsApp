
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:learnwordsapp/domain/repository/lists_repository.dart';
import 'package:learnwordsapp/features/list_item_details/model/list_item_event.dart';
import 'package:learnwordsapp/features/list_item_details/model/list_item_state.dart';

@injectable
class ListItemBloc extends Bloc<ListItemEvent, ListItemState> {
  final ListsRepository listsRepository;

  ListItemBloc(this.listsRepository) : super(ListItemState.initial()) {
    on<SaveListItemEvent>((SaveListItemEvent event, Emitter<ListItemState> emit) async {
      await listsRepository.addList(event.title);
    });
  }
}
