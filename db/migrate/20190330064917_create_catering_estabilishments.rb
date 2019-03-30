class CreateCateringEstabilishments < ActiveRecord::Migration[5.2]
  def change
    create_table :catering_estabilishments do |t|
      t.string :title
      t.string :description
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
