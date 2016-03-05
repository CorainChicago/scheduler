class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :day
      t.integer :student_id
      t.integer :tutor_id
      t.datetime :time

      t.timestamps null: false
    end
  end
end
