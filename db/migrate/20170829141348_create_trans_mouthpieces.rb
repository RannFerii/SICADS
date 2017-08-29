class CreateTransMouthpieces < ActiveRecord::Migration[5.0]
  def change
    create_table :trans_mouthpieces do |t|
      t.string :marca
      t.string :tipo
      t.string :num_serie
      t.string :kv
      t.string :amp
      t.date :fecha_fabricacion
      t.belongs_to :phase, foreign_key: true


      t.timestamps
    end
  end
end
