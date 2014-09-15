class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.string :name
      t.string :cant
      t.string :talle
      t.text :description

      t.timestamps
    end
  end
end
