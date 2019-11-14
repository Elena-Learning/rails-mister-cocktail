class CreateCoctails < ActiveRecord::Migration[5.2]
  def change
    create_table :coctails do |t|
      t.string :name
      t.string :string

      t.timestamps
    end
  end
end
