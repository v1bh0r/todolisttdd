'use strict'

angular.module('todolisttddApp')
  .controller 'MainCtrl', ['$scope', 'Task', ($scope, Task) ->
    $scope.todoListItems = Task.all()
    $scope.addTask = (task) ->
      Task.add(task)
  ]

