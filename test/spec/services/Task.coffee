'use strict'

describe 'Service: Task', () ->

  # load the service's module
  beforeEach module 'todolisttddApp'

  # instantiate service
  Task = {}
  beforeEach inject (_Task_) ->
    Task = _Task_

  it 'should be present', () ->
    expect(!!Task).toBe true

  describe 'when have no items present', () ->
    it 'should return 0 items', ->
      expect(Task.all().length).toBe 0

  describe 'when one item is present', ->
    beforeEach ->
      task = Factory.build('task')
      Task.add(task);

    it 'should have one item', ->
      expect(Task.all().length).toBe 1