/* global angular */ /* this comment turns off linter error! */

(function() {
  "use strict";

  angular.module("app").controller("stuffCtrl", function($scope) {
    // $scope.message = "Hello world!";
    $scope.anotherMessage = "Goodbye world!";

    $scope.reviews = ["review1", "review2", "review3"];

    $scope.addReview = function(inputReview) {
      $scope.reviews.push(inputReview);  /* js for ruby shovel */
    };

    window.$scope = $scope;  /* use for debugging in chrome console */
  });

})();
  