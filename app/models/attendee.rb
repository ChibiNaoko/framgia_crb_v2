class Attendee < ActiveRecord::Base
  ATTRIBUTES_PARAMS = [:user_id, :event_id]

  belongs_to :user
  belongs_to :event

  delegate :name, to: :user, prefix: :user, allow_nil: :true
end
