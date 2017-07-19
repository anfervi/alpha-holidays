class CreateCurriculums < ActiveRecord::Migration[5.1]
  def change
    create_table :curriculums do |t|
      t.string :adress
      t.string :postal_code
      t.string :city
      t.string :phone
      t.date :birthdate
      t.string :nationality
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
