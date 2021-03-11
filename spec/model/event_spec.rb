require 'rails_helper'

RSpec.describe Event, type: 'model' do
  before :each do
    user = User.create(name: 'TestName')
    event = Event.new(title: 'New Test', location: 'home' ,description: 'Test event', creator_id: 1, date: '2021-04-10')
  end

  # describe 'associations' do
  #   it 'belongs to creator' do
  #     expect(event).to respond_to(:creator)
  #   end

  #   it 'has many attendances' do
  #     expect(event).to respond_to(:event_attendances)
  #   end

  #   it 'has many attendees' do
  #     expect(user).to respond_to(:attendees)
  #   end
  # end

  it 'title should not be empty' do
    e = Event.new
    e.title = nil
    expect(e).to_not be_valid
  end

  it 'should not be empty' do
    e = Event.new
    e.title = 'New Title'
    e.date = Time.now
    e.location = 'Beirut'
    e.creator_id = 1
    e.description = 'House shower for the newly wedded couple'
    expect(e).to be_valid
  end

  it 'Description should not be empty' do
    e = Event.new
    e.description = nil
    expect(e).to_not be_valid
  end

  it 'Date should not be empty' do
    e = Event.new
    e.date = nil
    expect(e).to_not be_valid
  end

  it 'location should not be empty' do
    e = Event.new
    e.location = nil
    expect(e).to_not be_valid
  end
end