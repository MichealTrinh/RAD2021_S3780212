class CreateSizes < ActiveRecord::Migration[6.1]
  def change
    create_table :sizes do |t|
      t.boolean :s
      t.boolean :m
      t.boolean :l
      t.boolean :xl
      t.boolean :xxl

      t.timestamps
    end
  end
end
