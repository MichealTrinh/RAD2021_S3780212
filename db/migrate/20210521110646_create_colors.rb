class CreateColors < ActiveRecord::Migration[6.1]
  def change
    create_table :colors do |t|
      t.boolean :white
      t.boolean :gray
      t.boolean :red
      t.boolean :purple
      t.boolean :blue
      t.boolean :green
      t.boolean :brown
      t.boolean :black

      t.timestamps
    end
  end
end
