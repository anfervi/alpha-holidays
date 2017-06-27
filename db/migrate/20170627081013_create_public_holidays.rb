class CreatePublicHolidays < ActiveRecord::Migration[5.1]
  def change
    create_table :public_holidays do |t|
      t.string :name
      t.date :day
      t.references :work_calendar, foreign_key: true

      t.timestamps
    end
  end
end
