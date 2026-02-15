// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:form_inputs/form_inputs.dart';
// import 'package:formz/formz.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:injectable/injectable.dart';
// import '../../../../core/errors/api_error_model.dart';
// import '../../../../core/networking/api_result.dart';
// import '../../domain/entity/s3_entity.dart';
// import '../../domain/use_cases/s3_use_cases.dart';
// import '../../../orders/domain/entities/order_details_entity.dart';
// import '../../../orders/present/blocs/orders_bloc/orders_bloc.dart';
// part 's3_bloc.freezed.dart';
// part 's3_event.dart';
// part 's3_state.dart';

// @lazySingleton
// class NotesBloc extends Bloc<NotesEvent, NotesState> {
//   final NotesUseCase notsUseCases;
//   final OrdersBloc ordersBloc;

//   NotesBloc({required this.notsUseCases, required this.ordersBloc})
//     : super(
//         const NotesState.loaded(
//           note: GenericFormzInput.pure(),
//           formzSubmissionStatus: FormzSubmissionStatus.initial,
//         ),
//       ) {
//     on<NotesEvent>((event, emit) async {
//       await event.when(
//         createNote: (orderId) async {
//           await state.whenOrNull(
//             loaded: (note, _) async {
//               emit(
//                 NotesState.loaded(
//                   note: note,
//                   formzSubmissionStatus: FormzSubmissionStatus.inProgress,
//                 ),
//               );
//               if (note.value != null && note.value!.isNotEmpty) {
//                 final res = await notsUseCases.createNote(
//                   note: CreateNoteEntity(note: note.value!, orderId: orderId),
//                 );
//                 await res.when(
//                   success: (res) async {
//                     emit(
//                       NotesState.loaded(
//                         note: GenericFormzInput.pure(),
//                         formzSubmissionStatus: (Formz.validate([note])
//                             ? FormzSubmissionStatus.success
//                             : FormzSubmissionStatus.failure),
//                       ),
//                     );
//                     ordersBloc.add(OrdersEvent.noteAdded(note: res!));
//                   },
//                   failure: (apiErrorModel) async {
//                     emit(
//                       NotesState.loaded(
//                         note: note,
//                         formzSubmissionStatus: FormzSubmissionStatus.failure,
//                       ),
//                     );
//                   },
//                 );
//               } else {
//                 emit(
//                   NotesState.loaded(
//                     note: note,
//                     formzSubmissionStatus: FormzSubmissionStatus.failure,
//                   ),
//                 );
//               }
//             },
//           );
//         },
//         dataChanged: (v) async {
//           emit(
//             NotesState.loaded(
//               note: v,
//               formzSubmissionStatus: (Formz.validate([v])
//                   ? FormzSubmissionStatus.success
//                   : FormzSubmissionStatus.failure),
//             ),
//           );
//         },
//       );
//     });
//   }
// }
