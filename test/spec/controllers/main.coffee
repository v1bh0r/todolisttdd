'use strict'

describe 'Controller: MainCtrl', () ->

  # load the controller's module
  beforeEach module 'todolisttddApp', 'myMocks'

  MainCtrl = {}
  scope = {}

  describe 'empty todoList', () ->
    beforeEach inject ($controller, $rootScope, mockTask) ->
      scope = $rootScope.$new()

      mockTaskService = mockTask

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
    beforeEach inject ($controller, $rootScope, mockTask) ->
      scope = $rootScope.$new()

      mockTaskService = mockTask
      items = [Factory.build('task')]
      mockTaskService.items.prototype = items

      MainCtrl = $controller 'MainCtrl', {
        $scope: scope,
        Task: mockTaskService
      }

    it 'should have one item in list', () ->
      expect(scope.todoListItems.length).toBe(1);

    it 'should have two items after we add a task', () ->
      scope.addTask('asdfasfd');
      expect(scope.todoListItems.length).toBe(2);