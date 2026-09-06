import 'package:flutter_test/flutter_test.dart';
import 'package:taran_flutter_portfolio/main.dart';

void main() {
  testWidgets('HomePage displays required content', (tester) async {
    await tester.pumpWidget(const PortfolioApp());

    expect(find.text('Taran P'), findsOneWidget);
    expect(find.text('BTECH AIML STUDENT'), findsOneWidget);
    expect(find.text('About Me'), findsOneWidget);
    expect(find.text('Projects'), findsOneWidget);
  });
}
