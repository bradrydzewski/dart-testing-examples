import 'package:unittest/unittest.dart';
import 'package:unittest/html_enhanced_config.dart';
import 'dart:html';
import '../web/main.dart' as app;

void main() {

  useHtmlEnhancedConfiguration();
  var todo = "stop procrastinating google io presentation";
  
  group("Test adding ToDo", () {
    setUp((){
      app.main();
      app.toDoInput.value = todo;
      querySelector("#todo-save").click();
    });

    test("todo added to page", () {
      expect(app.toDoList.children.length, equals(1));  
      expect(app.toDoList.children.first.innerHtml, equals(todo), reason: "expect todo equals ${todo}"); 
    });
    test("input was cleared", () {
      expect(app.toDoInput.text, isEmpty);  
    });
    
  });
}

