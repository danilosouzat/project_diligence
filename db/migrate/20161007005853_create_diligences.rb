class CreateDiligences < ActiveRecord::Migration
  def change
    create_table :diligences do |t|
      t.string :titulo
      t.text :corpo
      t.string :status
      t.date :data_inicio
      t.date :data_fim

      t.timestamps null: false
    end
  end
end
