class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :tutor_id
      t.datetime :time
      t.integer :student_id

      t.timestamps null: false
    end
  end
end
