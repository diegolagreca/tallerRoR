class CreateIncidentes < ActiveRecord::Migration
  def change
    create_table :incidentes do |t|
      t.string :asunto
      t.string :descripcion
      t.string :responsable
      t.string :tipo
      t.integer :prioridad

      t.timestamps null: false
    end
  end
end
