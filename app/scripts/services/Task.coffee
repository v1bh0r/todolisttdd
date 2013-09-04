'use strict';

angular.module('todolisttddApp')
  .service 'Task', () ->
    # AngularJS will instantiate a singleton by calling "new" on this function

    tasks = [];

    all: ->
      return tasks
    add: (task)->
      tasks.push(task);
