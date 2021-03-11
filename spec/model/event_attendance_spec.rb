describe EventAttendance do
  @user = User.new(name: 'Ahmet')
  @event = @user.created_events.new(title: "first comment", description: "dsad", location: "oljdsa", date: "10-12-2020")
  @event_attendances = EventAttendance.new(attendee_id: 1, attended_event_id: 1)

  describe 'associations' do
    it 'belongs to attendee' do
      expect(@user).to respond_to(:attendee)
    end

    it 'belongs to attended_event' do
      expect(@event).to respond_to(:attended_event)
    end
  end
end


