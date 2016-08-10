class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.references :category, index: true
      t.string :text

      t.timestamps
    end
  end
end
