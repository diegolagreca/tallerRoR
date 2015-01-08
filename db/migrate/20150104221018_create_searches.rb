class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :tipo
      t.integer :prioridad

      t.timestamps
    end
  end
end
