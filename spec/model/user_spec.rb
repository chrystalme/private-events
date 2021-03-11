require "rails_helper"

describe User do
  describe "with 2 or more events" do
    it "checks to make sure the user is the creator of an event" do
      @user = User.new(name: 'Ahmet')
      event = @user.created_events.new(title: "first comment", description: "dsad", location: "oljdsa", date: "10-12-2020")
      expect(@user.id).to eql(event.creator_id)
    end
  end
end

RSpec.describe User, type: :model do
  let(:user) { User.new(name: 'Chrys') }
  let(:created_events) { Event.new(title: 'New Test', location: 'home' ,description: 'Test event', creator_id: 1, date: '2021-04-10') }
  let(:event_attendances) { EventAttendance.new(attendee_id: 1, attended_event_id: 1) }

  describe 'associations' do
    it 'has many events' do
      expect(user).to respond_to(:created_events)
    end

    it 'has many attendances' do
      expect(user).to respond_to(:event_attendances)
    end

    it 'has many attended_events' do
      expect(user).to respond_to(:attended_events)
    end
  end

  describe 'validations' do
    it 'must have a name' do
      expect(user).to be_valid
    end

    it 'name cannot be empty' do
      user.name = nil
      expect(user).not_to be_valid
    end
  end
end