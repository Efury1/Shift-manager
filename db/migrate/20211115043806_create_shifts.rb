class CreateShifts < ActiveRecord::Migration[6.1]
  def change
    create_table :shifts do |t|
      t.string :user_id
      t.datetime :start_shift
      t.datetime :end_shift
      t.integer :break_length

      t.timestamps
    end
  end
end
