class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :nombre
      t.string :carrera
      t.string :clase1
      t.string :clase2
      t.string :clase3
      t.string :clase4
      t.string :materia1
      t.string :materia2
      t.string :materia3
      t.string :materia4

      t.timestamps
    end
  end
end
