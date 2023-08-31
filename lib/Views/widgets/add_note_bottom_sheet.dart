import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/Views/widgets/add_note_form.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

class AddNotesBottomSheet extends StatelessWidget {
  const AddNotesBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Container(
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFailure) {
              print('failed ${state.errMessage}');
            }
            if (state is AddNoteSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is AddNoteLoading ? true : false,
              child: AbsorbPointer(
                absorbing: state is AddNoteLoading ? true : false,
                child: Padding(
                  padding: EdgeInsets.only(
                      right: 16,
                      left: 16,
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: const SingleChildScrollView(
                    child: AddNoteForm(),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
