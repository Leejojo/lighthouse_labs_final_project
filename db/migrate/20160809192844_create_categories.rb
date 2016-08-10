class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.references :quiz, index: true
      t.string :subject
      t.string :color

      t.timestamps
    end
  end
end
