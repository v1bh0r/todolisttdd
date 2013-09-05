Factory.define('task')
.sequence('id')
.sequence('description', (i) ->
    "task" + i
  )
.attr('completed', false);

Factory.define('completed-task').extend('task').attr('completed', true)