// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'books_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BooksEvents {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserBooks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserBooks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserBooks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUserBooks value) getUserBooks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchUserBooks value)? getUserBooks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUserBooks value)? getUserBooks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooksEventsCopyWith<$Res> {
  factory $BooksEventsCopyWith(
          BooksEvents value, $Res Function(BooksEvents) then) =
      _$BooksEventsCopyWithImpl<$Res, BooksEvents>;
}

/// @nodoc
class _$BooksEventsCopyWithImpl<$Res, $Val extends BooksEvents>
    implements $BooksEventsCopyWith<$Res> {
  _$BooksEventsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchUserBooksCopyWith<$Res> {
  factory _$$_FetchUserBooksCopyWith(
          _$_FetchUserBooks value, $Res Function(_$_FetchUserBooks) then) =
      __$$_FetchUserBooksCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchUserBooksCopyWithImpl<$Res>
    extends _$BooksEventsCopyWithImpl<$Res, _$_FetchUserBooks>
    implements _$$_FetchUserBooksCopyWith<$Res> {
  __$$_FetchUserBooksCopyWithImpl(
      _$_FetchUserBooks _value, $Res Function(_$_FetchUserBooks) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchUserBooks implements _FetchUserBooks {
  const _$_FetchUserBooks();

  @override
  String toString() {
    return 'BooksEvents.getUserBooks()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchUserBooks);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserBooks,
  }) {
    return getUserBooks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserBooks,
  }) {
    return getUserBooks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserBooks,
    required TResult orElse(),
  }) {
    if (getUserBooks != null) {
      return getUserBooks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUserBooks value) getUserBooks,
  }) {
    return getUserBooks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchUserBooks value)? getUserBooks,
  }) {
    return getUserBooks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUserBooks value)? getUserBooks,
    required TResult orElse(),
  }) {
    if (getUserBooks != null) {
      return getUserBooks(this);
    }
    return orElse();
  }
}

abstract class _FetchUserBooks implements BooksEvents {
  const factory _FetchUserBooks() = _$_FetchUserBooks;
}
