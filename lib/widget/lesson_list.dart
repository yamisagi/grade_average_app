import 'package:flutter/material.dart';
import 'package:grade_avarage_app/constants/constants.dart';
import 'package:grade_avarage_app/data/data.dart';
import 'package:grade_avarage_app/model/lesson_model.dart';

class LessonList extends StatelessWidget {
  final Function onDismiss;
  const LessonList({
    Key? key,
    required this.onDismiss,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Lesson> lessons = DataHelper.allLessons;
    return DataHelper.allLessons.isNotEmpty
        ? ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            itemCount: DataHelper.allLessons.length,
            itemBuilder: ((context, index) {
              return Dismissible(
                key: UniqueKey(),
                onDismissed: (direction) {
                  onDismiss(index);
                },
                child: Card(
                  color: Constants.fillColor,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Constants.borderColor.withOpacity(0.5),
                      child: Text(
                          (lessons[index].lessonCredit *
                                  lessons[index].lessonLetter)
                              .toString(),
                          style: Constants.titleTextTheme
                              .copyWith(fontSize: 15, color: Colors.white)),
                    ),
                    title: Text(
                      lessons[index].lessonName,
                      style: Constants.titleTextTheme
                          .copyWith(fontSize: 20, color: Colors.white),
                    ),
                    subtitle: Text(
                      '${lessons[index].lessonCredit} Kredi, Not Değeri : ${lessons[index].lessonLetter}',
                      style: Constants.titleTextTheme.copyWith(
                        fontSize: 12,
                        color: Colors.blueGrey[800],
                      ),
                    ),
                  ),
                ),
              );
            }))
        : Center(child: Constants.emptyNotes);
  }
}
