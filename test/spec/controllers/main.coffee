'use strict'

describe 'Controller: MainCtrl', () ->

  # load the controller's module
  beforeEach module 'todolisttddApp'

  MainCtrl = {}
  scope = {}

  describe 'empty todoList', () ->
    beforeEach inject ($controller, $rootScope) ->
      scope = $rootScope.$new()

      mockTaskService =
        items: [],
        all: ->
          this.items
        add: (task)->
          this.items.push(task)

      MainCtrl = $controller 'MainCtrl', {
        $scope: scope,
        Task: mockTaskService
      }

    it 'should have zero items in list initially', () ->
      expect(scope.todoListItems.length).toBe(0);

    it 'should have one item after we add a task', () ->
      scope.addTask('asdfasfd');
      expect(scope.todoListItems.length).toBe(1);

  describe 'one item in todoList', () ->
    beforeEach inject ($controller, $rootScope) ->
      scope = $rootScope.$new()

      mockTaskService =
        items: [Factory.build('task')],
        all: ->
          this.items
        add: (task)->
          this.items.push(task)

      MainCtrl = $controller 'MainCtrl', {
        $scope: scope,
        Task: mockTaskService
      }

    it 'should have one item in list', () ->
      expect(scope.todoListItems.length).toBe(1);

    it 'should have two items after we add a task', () ->
      scope.addTask('asdfasfd');
      expect(scope.todoListItems.length).toBe(2);