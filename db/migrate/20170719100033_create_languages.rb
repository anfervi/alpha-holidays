class CreateLanguages < ActiveRecord::Migration[5.1]
  def change
    create_table :languages do |t|
      t.string :language
      t.integer :speaking
      t.integer :writing
      t.integer :reading
      t.references :curriculum, foreign_key: true

      t.timestamps
    end
  end
end
