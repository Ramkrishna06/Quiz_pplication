// import 'package:flutter/cupertino.dart';
//
// import '../controller/Questionalter.dart';
//
// class Test extends StatelessWidget {
//   const Test({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Quiz Details'),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Title: ${quizData['title'] ?? 'N/A'}',
//                 style: const TextStyle(fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 8),
//               Text('Topic: ${quizData['topic'] ?? 'N/A'}'),
//               const SizedBox(height: 8),
//               Text('Duration: ${quizData['duration']} minutes'),
//               const SizedBox(height: 8),
//               Text('Questions: ${quizData['questions_count']}'),
//               const SizedBox(height: 8),
//               Text('Start Time: ${quizData['time']}'),
//               const SizedBox(height: 8),
//               Text('End Time: ${quizData['end_time']}'),
//               const SizedBox(height: 16),
//               Text('Description:', style: TextStyle(fontWeight: FontWeight.bold)),
//               const SizedBox(height: 8),
//               Text(quizData['description'] ?? 'No description provided.'),
//               const SizedBox(height: 16),
//               if (quizData['reading_material'] != null)
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Reading Material:',
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                     const SizedBox(height: 8),
//                     Html(
//                       data: quizData['reading_material']['content_sections']
//                           .join(''),
//                     ),
//                   ],
//                 ),
//               const SizedBox(height: 16),
//               Text('Questions:', style: TextStyle(fontWeight: FontWeight.bold)),
//               const SizedBox(height: 8),
//               ListView.builder(
//                 shrinkWrap: true,
//                 physics: NeverScrollableScrollPhysics(),
//                 itemCount: quizData['questions'].length,
//                 itemBuilder: (context, index) {
//                   final question = quizData['questions'][index];
//                   return Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         '${index + 1}. ${question['description']}',
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       ),
//                       const SizedBox(height: 8),
//                       ListView.builder(
//                         shrinkWrap: true,
//                         physics: NeverScrollableScrollPhysics(),
//                         itemCount: question['options'].length,
//                         itemBuilder: (context, optionIndex) {
//                           final option = question['options'][optionIndex];
//                           return ListTile(
//                             title: Text(option['description']),
//                             trailing: option['is_correct']
//                                 ? Icon(Icons.check, color: Colors.green)
//                                 : null,
//                           );
//                         },
//                       ),
//                       const SizedBox(height: 16),
//                     ],
//                   );
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );;
//   }
// }
