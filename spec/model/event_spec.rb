require 'rails_helper'

RSpec.describe Event, type: 'model' do
  before :each do
    event = Event.new
    event.title = 'Test Event'
    user = User.create(name: 'TestName')
  end

  it 'title should not be empty' do
    e = Event.new
    e.title = nil
    expect(e).to_not be_valid
  end

#   it 'title should not be empty' do
#     e = Event.new
#     e.title = 'New Title'
#     e.date = Time.now
#     e.location = 'Beirut'
#     e.description = 'House shower for the newly wedded couple'
#     expect(e).to be_valid
#   end

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