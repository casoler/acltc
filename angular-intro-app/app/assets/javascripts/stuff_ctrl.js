/* global angular */ /* this comment turns off linter error! */

(function() {
  "use strict";

  angular.module("app").controller("stuffCtrl", function($scope) {
    // $scope.message = "Hello world!";
    $scope.anotherMessage = "Goodbye world!";

    $scope.reviews = [
      {
        text: "review1",
        rating: 5,
        reviewer: "Bob Smith"
      },
      {
        text: "review2",
        rating: 3,
        reviewer: "Barb Smith"
      },
      {
        text: "review3",
        rating: 2,
        reviewer: "Billy Smith"
      },
      {
        text: "stupid",
        rating: 1,
        reviewer: "Barney Smith"
      }
    ];

    $scope.addReview = function(inputText, inputRating, inputReviewer) {
      if (inputText && inputRating && inputReviewer) {
        var newReview = {
          text: inputText,
          rating: inputRating,
          reviewer: inputReviewer
        };
        $scope.reviews.push(newReview);  /* js for ruby shovel */
      }
      $scope.newReviewText = '';
      $scope.newReviewRating = '';
      $scope.newReviewReviewer = '';
    };

    $scope.isPositiveReview = function(inputReview) {
      return inputReview.indexOf("stupid") === -1;
    };

    window.$scope = $scope;  /* use for debugging in chrome console */
  });

})();
  