class CreateBoards < ActiveRecord::Migration[6.0]
  def change
    create_table :boards do |t|
      t.references :admin, :null => false
      t.string :title, :limit => 60, :null => false
      t.integer :default_view_count, :null => false, :default => 0
      t.boolean :enable, :null => false, :default => true
      t.timestamps null: false
    end

    create_table :board_contents do |t|
      t.text :content, :null => false
    end
  end
end
