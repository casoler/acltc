require 'rails_helper'

RSpec.describe List, type: :model do
  describe '#complete_all_tasks!' do
    it 'should mark all tasks from the list as complete' do
      list = List.create(name: 'chores')
      
      Task.create(complete: false, list_id: list.id, name: 'Take out the trash')
      Task.create(complete: false, list_id: list.id, name: 'Mow the lawn')

      list.complete_all_tasks!

      list.tasks.each do |task|
        expect(task.complete).to eq(true)
      end
    end
  end

  describe '#snooze_all_tasks!' do
    it 'should add one hour to each task deadline' do
      list = List.create(name: 'chores')
      
      time_now = Time.now
      Task.create(deadline: time_now, list_id: list.id, name: 'Take out the trash')
      Task.create(deadline: time_now, list_id: list.id, name: 'Mow the lawn')

      list.snooze_all_tasks!

      list.tasks.each do |task|
        expect(task.deadline).to eq(time_now + 1.hour)
      end
    end
  end

  describe '#total_duration' do
    it 'should total the duration of all tasks' do
      list = List.create(name: 'chores')
      
      Task.create(duration: 10, list_id: list.id, name: 'Take out the trash')
      Task.create(duration: 60, list_id: list.id, name: 'Mow the lawn')
      Task.create(duration: 90, list_id: list.id, name: 'Trim the hedges')

      expect(list.total_duration).to eq(160)
    end
  end

  describe '#incomplete_tasks' do
    it 'should return an array of all incomplete tasks' do
      list = List.create(name: 'chores')
      
      Task.create(complete: true, list_id: list.id, name: 'Take out the trash')
      Task.create(complete: false, list_id: list.id, name: 'Mow the lawn')
      Task.create(complete: false, list_id: list.id, name: 'Trim the hedges')

      expect(list.incomplete_tasks.count).to eq(2)

      list.incomplete_tasks.each do |task|
        expect(task.complete).to eq(false)
      end

      expect(list.incomplete_tasks).to match_array(list.tasks.where(complete: false))
    end
  end

  describe '#favorite_tasks' do
    it 'should return an array of all favorite tasks' do
      list = List.create(name: 'chores')
      list.save
      
      Task.create(favorite: true, list_id: list.id, name: 'Walk the dog')
      Task.create(favorite: false, list_id: list.id, name: 'Clean the litter box')
      Task.create(favorite: true, list_id: list.id, name: 'Feed the birds')

      expect(list.favorite_tasks.count).to eq(2)

      list.favorite_tasks.each do |task|
        expect(task.favorite).to eq(true)
      end

      expect(list.favorite_tasks).to match_array(list.tasks.where(favorite: true))
    end
  end
end
