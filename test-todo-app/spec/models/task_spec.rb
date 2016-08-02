require 'rails_helper'

RSpec.describe Task, type: :model do
  describe '#toggle_complete!' do
    it 'should switch complete to false if it bagan as true' do
      task = Task.new(complete: true)
      task.toggle_complete!
      expect(task.complete).to eq(false)
    end

    it 'should switch complete to false if it bagan as false' do
      task = Task.new(complete: false)
      task.toggle_complete!
      expect(task.complete).to eq(true)
    end
  end

  describe '#toggle_favorite!' do
    it 'should switch task to not favorite if it began as favorite' do
      task = Task.new(favorite: true)
      task.toggle_favorite!
      expect(task.favorite).to eq(false)
    end
  end

  describe '#overdue?' do
    it 'should return true if task is overdue' do
      task = Task.new(deadline: 1.day.ago)
      expect(task.overdue?).to eq(true)
    end

    it 'should return false if task is not overdue' do
      task = Task.new(deadline: 1.day.from_now)
      expect(task.overdue?).to eq(false)
    end
  end

  describe '#increment_priority!' do
    it 'should increment the priority by 1 if priority < 10' do
      task = Task.new(priority: 4)
      task.increment_priority!
      expect(task.priority).to eq(5)
    end

    it 'should not increment the priority if priority = 10' do
      task = Task.new(priority: 10)
      task.increment_priority!
      expect(task.priority).to eq(10)
    end
  end

  describe '#decrement_priority!' do
    it 'should decrement the priority by 1 if priority > 1' do
      task = Task.new(priority: 4)
      task.decrement_priority!
      expect(task.priority).to eq(3)
    end

    it 'should not decrement the priority if priority = 1' do
      task = Task.new(priority: 1)
      task.decrement_priority!
      expect(task.priority).to eq(1)

      task = Task.new(priority: -1)
      task.decrement_priority!
      expect(task.priority).to eq(-1)
    end
  end

  describe '#snooze_hour!' do
    it 'updates the deadline by 1 hour' do
      task = Task.new(deadline: Time.new(2016, 7, 28))
      task.snooze_hour!
      expect(task.deadline).to eq(Time.new(2016, 7, 28, 1, 0, 0))
    end
  end
end
