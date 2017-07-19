class CreateEducations < ActiveRecord::Migration[5.1]
  def change
    create_table :educations do |t|
      t.integer :type
      t.date :start_date
      t.date :end_date
      t.string :title
      t.string :center
      t.string :city
      t.integer :duration
      t.references :curriculum, foreign_key: true

      t.timestamps
    end
  end
end
