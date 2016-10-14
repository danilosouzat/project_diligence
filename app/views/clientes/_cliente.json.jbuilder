json.extract! cliente, :id, :nome, :oab, :cpf, :email, :telefone, :endereco, :cidade, :uf, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)