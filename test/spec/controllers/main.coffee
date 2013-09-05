'use strict'

describe 'Controller: MainCtrl', () ->

  # load the controller's module
  beforeEach module 'todolisttddApp', 'myMocks'

  MainCtrl = {}
  scope = {}
  mockTaskService = {}

  beforeEach inject ($controller, $rootScope, mockTask) ->
    scope = $rootScope.$new()

    mockTaskService = mockTask

    MainCtrl = $controller 'MainCtrl', {
      $scope: scope,
      Task: mockTaskService
    }

  describe 'empty todoList', () ->
    it 'should have zero items in list initially', () ->
      expect(scope.todoListItems.length).toBe(0);

    it 'should have one item after we add a task', () ->
      scope.addTask('asdfasfd');
      expect(scope.todoListItems.length).toBe(1);

  describe 'one item in todoList', () ->
    beforeEach ->
      mockTaskService.items.prototype = [Factory.build('task')]

    it 'should have one item in list', () ->
      expect(scope.todoListItems.length).toBe(1);

    it 'should have two items after we add a task', () ->
      scope.addTask('asdfasfd');
      expect(scope.todoListItems.length).toBe(2);