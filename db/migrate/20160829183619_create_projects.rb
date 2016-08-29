class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.boolean :completed
      t.text :post

      t.timestamps
    end
  end
end
