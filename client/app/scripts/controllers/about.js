'use strict';

/**
 * @ngdoc function
 * @name debriefApp.controller:AboutCtrl
 * @description
 * # AboutCtrl
 * Controller of the debriefApp
 */
angular.module('debriefApp')
  .controller('AboutCtrl', function ($scope) {
    $scope.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];
  });
