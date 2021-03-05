class CreateEventAttendances < ActiveRecord::Migration[6.1]
  def change
    create_table :event_attendances do |t|
      t.references :attendee, references: :user
      t.references :event

      t.timestamps
    end
  end
end
