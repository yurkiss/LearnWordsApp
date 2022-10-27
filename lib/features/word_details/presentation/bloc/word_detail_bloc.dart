import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:learnwordsapp/common/domain/model/word.dart';
import 'package:learnwordsapp/common/domain/repository/words_repository.dart';
import 'package:learnwordsapp/features/word_details/domain/usecase/create_word_usecase.dart';
import 'package:learnwordsapp/features/word_details/domain/usecase/edit_word_usecase.dart';
import 'package:learnwordsapp/features/word_details/presentation/model/word_detail_event.dart';
import 'package:learnwordsapp/features/word_details/presentation/model/word_detail_state.dart';

@injectable
class WordDetailBloc extends Bloc<WordEvent, WordState> {
  final CreateWordUsecase createWordUsecase;
  final EditWordUsecase editWordUsecase;
  final WordsRepository wordsRepository;

  WordDetailBloc(this.createWordUsecase, this.editWordUsecase, this.wordsRepository)
      : super(WordState.initial()) {
    on<SaveWordEvent>((SaveWordEvent event, Emitter<WordState> emit) async {
      if (event.id != null) {
        await editWordUsecase.run(
          params: EditWordParams.create(
            word: Word(
              id: event.id ?? -1,
              listId: event.list.id,
              title: event.title,
              translation: event.translation,
            ),
          ),
        );
      } else {
        await createWordUsecase.run(
          params: CreateWordParams.create(
            word: Word(
              listId: event.list.id,
              title: event.title,
              translation: event.translation,
            ),
          ),
        );
      }
    });
    on<QueryWordEvent>((QueryWordEvent event, Emitter<WordState> emit) async {
      final word = await wordsRepository.getWordById(event.id);
      word.fold(() => null, (a) {
        emit(state.copyWith(
          id: a.id,
          title: a.title,
          translation: a.translation,
        ));
      });
    });
  }
}
