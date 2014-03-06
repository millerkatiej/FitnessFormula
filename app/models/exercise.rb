class Exercise < ActiveRecord::Base
  validates :exercise_name, :date, :time_in_minutes, :exhaustion_level, presence: true
  validates :time_in_minutes, numericality: { only_integer: true }
  validates :reps_or_miles, numericality: { greater_than_or_equal_to: 0 }
  validates :exhaustion_level, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }

end
