class CreateChoices < ActiveRecord::Migration[5.0]
  def change
    create_table :choices do |t|
      t.references :question
      t.string :text
      t.boolean :is_correct

      t.timestamps
    end
  end
end
