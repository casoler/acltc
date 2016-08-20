/* global angular */ /* this comment turns off linter error! */

(function() {
  "use strict";

  angular.module("app").controller("peopleCtrl", function($scope) {

    $scope.people = [
      {
        name: 'Bob',
        bio: 'a clever guy',
        bioVisible: false
      },
      {
        name: 'Barb',
        bio: 'a clever gal',
        bioVisible: false
      },
      {
        name: 'Billy',
        bio: 'a not-so clever guy',
        bioVisible: false
      }
    ];

    $scope.toggleBio = function(person) {
      person.bioVisible = !person.bioVisible;
    };

    $scope.addPerson = function(inputName, inputBio) {
      if (inputName && inputBio) {
        var newPerson = {
          name: inputName,
          bio: inputBio,
          bioVisible: false
        };
        $scope.people.push(newPerson);
      }
      $scope.newPersonName = "";
      $scope.newPersonBio = "";
    };

    $scope.deletePerson = function(inputIndex) {
      $scope.people.splice(inputIndex, 1);
    };
    
    window.$scope = $scope;  /* use for debugging in chrome console */
  });

})();
  