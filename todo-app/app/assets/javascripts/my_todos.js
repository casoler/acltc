(function() {
  "use strict";

  angular.module("app").controller("myTodos", function($scope) {
    $scope.todos = ["Walk the dog", "Clean the litter box", "Feed the birds"];

    $scope.addTask = function(inputTask) {
      if (inputTask !== "" && inputTask !== undefined) {
        $scope.todos.push(inputTask);
        $scope.newTask = "";
      }
    };

    $scope.removeTask = function(inputTask) {
      var index = $scope.todos.indexOf(inputTask);
      if (index > -1) {
        $scope.todos.splice(index, 1);
      }
    };

    window.$scope = $scope;
  });

}());