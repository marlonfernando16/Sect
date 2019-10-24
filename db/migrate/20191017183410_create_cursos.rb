class CreateCursos < ActiveRecord::Migration[5.2]
  def change
    create_table :cursos do |t|
      t.string :nome
      t.string :email
      t.string :titulo
      t.integer :carga_horaria
      t.integer :vagas
      t.string :pre_requisitos

      t.timestamps
    end
  end
end
