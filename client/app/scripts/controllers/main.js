'use strict';

/**
 * @ngdoc function
 * @name debriefApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the debriefApp
 */
angular.module('debriefApp')
  .controller('MainCtrl', function ($scope) {
    $scope.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];
  });
