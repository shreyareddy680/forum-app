class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :title
      t.text :summary
      t.string :author

      t.timestamps
    end
  end
end
