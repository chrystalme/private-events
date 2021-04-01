# frozen_string_literal: true

class CreateEventAttendances < ActiveRecord::Migration[6.1]
  def change
    create_table :event_attendances do |t|
      t.references :attendee, references: :user
      t.references :attended_event, references: :event

      t.timestamps
    end
  end
end
