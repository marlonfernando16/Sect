json.extract! inscricao, :id, :nome, :matricula, :curso_id, :status, :created_at, :updated_at
json.url inscricao_url(inscricao, format: :json)
