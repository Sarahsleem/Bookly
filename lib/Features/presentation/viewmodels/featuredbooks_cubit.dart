import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'featuredbooks_state.dart';

class FeaturedbooksCubit extends Cubit<FeaturedbooksState> {
  FeaturedbooksCubit() : super(FeaturedbooksInitial());
}
