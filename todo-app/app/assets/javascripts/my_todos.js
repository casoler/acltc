(function() {
  "use strict";

  angular.module("app").controller("myTodos", function($scope) {
    $scope.todos = [
      {
        text: "Walk the dog",
        completed: false
      },
      {
        text: "Clean the litter box",
        completed: false
      },
      {
        text: "Feed the birds",
        completed: false
      }
    ];

    $scope.addTask = function(inputTask) {
      if (inputTask) {
        var newTask = {
          text: inputTask,
          completed: false
        };
        $scope.todos.push(newTask);
        // $scope.newTask = "";
      }
    };

    $scope.toggleCompleted = function(task) {
      task.completed = !task.completed;
    };

    $scope.completedTasks = function() {
      var totalCompleted = 0;
      for(var i = 0; i <= $scope.todos.length; i++) {
        if ($scope.todos[i].completed) {
          totalCompleted++;
        }
      }
      return totalCompleted;
    };

    window.$scope = $scope;
  });

}());