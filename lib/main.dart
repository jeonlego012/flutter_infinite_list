import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_infinite_list/app.dart';
import 'package:flutter_infinite_list/simple_bloc_observer.dart';

void main() {
  BlocOverrides.runZoned(
    () => runApp(App()),
    blocObserver: SimpleBlocObserver(),
  );
}

//event : http로 post 불러옴
//state : post 불러온 결과(성공여부, 내용, max)
//bloc에서 post를 불러옴(event), event(PostFetched)를 인식해서 그 post관련 내용(state)를 emit함. state(PostState)