class CreateHolidays < ActiveRecord::Migration[5.1]
  def change
    create_table :holidays do |t|
      t.string :year
      t.integer :status
      t.integer :validator_id
      t.datetime :validated_at
      t.string :title
      t.text :description
      t.date :start_day
      t.date :end_day
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
