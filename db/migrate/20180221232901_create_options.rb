class CreateOptions < ActiveRecord::Migration[5.0]
  def change
    create_table :options do |t|
      t.integer :parent_page_id
      t.integer :child_page_id

      t.timestamps
    end
  end
end
