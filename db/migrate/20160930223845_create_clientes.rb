class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :oab
      t.string :cpf
      t.string :email
      t.string :telefone
      t.string :endereco
      t.string :cidade
      t.string :uf

      t.timestamps null: false
    end
  end
end
