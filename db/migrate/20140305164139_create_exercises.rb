class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :exercise_name
      t.integer :time_in_minutes
      t.decimal :reps_or_miles
      t.integer :exhaustion_level
      t.date :date

      t.timestamps
    end
  end
end
