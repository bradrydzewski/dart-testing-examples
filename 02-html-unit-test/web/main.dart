import 'dart:html';

InputElement toDoInput;
UListElement toDoList;

void main() {
  toDoList = querySelector("#todo-list");
  toDoInput = querySelector("#todo-input");

  querySelector("#todo-save")
    ..onClick.listen(addToDo);
}

void addToDo(Event e) {
  var newToDo = new LIElement();
  newToDo.text = toDoInput.value;
  toDoList.children.add(newToDo);
  toDoInput.value = "";
}