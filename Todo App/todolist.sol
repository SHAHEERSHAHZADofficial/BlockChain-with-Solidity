// SPDX-License-Identifier: MIT

pragma solidity ^0.8.15;

contract TodoApp {

    struct Todo {
        string text;
        bool completed;
    }

 
Todo[] public todos;

 function createNewTodo(string calldata _text) external {
todos.push(Todo({
    text:_text,
    completed:false
}));
}

   


function updateText(uint _index,string calldata _text) external {
Todo storage todo =todos[_index];
todo.text=_text; 

}

function getOneTodo(uint _index) external view returns(string memory,bool) {

Todo storage todo = todos[_index];
return(todo.text,todo.completed);

}

function updateToggle(uint _index) external {
Todo storage todo =todos[_index];
todo.completed=!todo.completed; 
}




}