class CreateCorrespondentes < ActiveRecord::Migration
  def change
    create_table :correspondentes do |t|
      t.string :nome
      t.string :cpf
      t.string :telefone
      t.string :email
      t.string :cidade
      t.string :uf
      t.text :observacao

      t.timestamps null: false
    end
  end
end
