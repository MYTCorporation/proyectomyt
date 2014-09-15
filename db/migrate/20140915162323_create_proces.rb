class CreateProces < ActiveRecord::Migration
  def change
    create_table :proces do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
