class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.integer :author_id
      t.integer :parent_option_id

      t.timestamps
    end
  end
end
