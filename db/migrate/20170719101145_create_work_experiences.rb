class CreateWorkExperiences < ActiveRecord::Migration[5.1]
  def change
    create_table :work_experiences do |t|
      t.date :start_date
      t.date :end_date
      t.string :position
      t.string :company
      t.string :city
      t.text :activities
      t.text :technologies
      t.references :curriculum, foreign_key: true

      t.timestamps
    end
  end
end
