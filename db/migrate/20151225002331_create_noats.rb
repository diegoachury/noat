class CreateNoats < ActiveRecord::Migration
  def change
    create_table :noats do |t|
      t.string :title
      t.string :description

      t.timestamps null: false
    end
  end
end
