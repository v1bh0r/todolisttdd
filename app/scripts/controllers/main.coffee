'use strict'

angular.module('todolisttddApp')
  .controller 'MainCtrl', ['$scope', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
  ]
