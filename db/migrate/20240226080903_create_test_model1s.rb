class CreateTestModel1s < ActiveRecord::Migration[7.1]
  def change
    create_table :test_model1s do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
