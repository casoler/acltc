/* global angular */

(function() {
  "use strict";

  // changed $scope to bobScope because of minification
  // because of the array ['$scope', '$http', function(anyNameScope)... can be named anything]

  angular.module('app').controller('dogsCtrl', ['$scope', '$http', function(bobScope, $http) {
    bobScope.setup = function() {
      $http.get('/api/v1/dog_api.json').then(function(response) {
        console.log(response.data);
        bobScope.dogs = response.data;
      });
    };

    bobScope.toggleDogGroup = function(inputDog) {
      inputDog.groupVisible = !inputDog.groupVisible;
    };

    bobScope.setOrderAttribute = function(inputAttribute) {
      if (inputAttribute !== bobScope.orderAttribute) {  // clicked on a different button
        bobScope.isOrderDescending = false;
      } else { // clicked on the same button
        bobScope.isOrderDescending = !bobScope.isOrderDescending;
      }

      bobScope.orderAttribute = inputAttribute;
    };

    bobScope.getOrderIcon = function(inputOrderAttribute) {
      if (inputOrderAttribute === bobScope.orderAttribute) {
        return bobScope.isOrderDescending ? '\u2193' : '\u2191';
      } else {
        return "";
      }
    };

    bobScope.addDog = function(inputBreed, inputGroup) {
      var params = {
        breed: inputBreed,
        dog_group: inputGroup
      };

      // post to database then push to front-end array
      $http.post('/api/v1/dog_api.json', params).then(function(response) {
        bobScope.dogs.push(response.data);
        bobScope.errors = [];
        bobScope.newDogBreed = '';
        bobScope.newDogGroup = '';
      }, function(errorResponse) {
        bobScope.errors = errorResponse.data.errors;
      });
    };

    bobScope.deleteDog = function(inputDog) {
      var index = bobScope.dogs.indexOf(inputDog);
      bobScope.dogs.splice(index, 1);
    };

    window.bobScope = bobScope;
  }]);
})();

