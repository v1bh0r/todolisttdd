angular.module('myMocks', [])
.value('mockTask', {
    items: [],
    all: ->
      this.items
    add: (task)->
      this.items.push(task)
  });