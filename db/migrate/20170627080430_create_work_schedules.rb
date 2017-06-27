class CreateWorkSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :work_schedules do |t|
      t.string :name
      t.string :company
      t.string :year
      t.references :holiday, foreign_key: true

      t.timestamps
    end
  end
end
