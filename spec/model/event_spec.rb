require 'rails_helper'

RSpec.describe Event, type: :model do
  event = Event.new
  user = User.create(name: 'TestName')

  it 'title should not be empty' do
    event.title = nil
    expect(event).to_not be_valid
  end
end