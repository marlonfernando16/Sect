json.extract! curso, :id, :nome, :email, :titulo, :carga_horaria, :vagas, :pre_requisitos, :created_at, :updated_at
json.url curso_url(curso, format: :json)
