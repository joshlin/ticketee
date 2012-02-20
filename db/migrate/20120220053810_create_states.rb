class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :name
      t.string :color
      t.string :background

      add_column :tickets, :state_id, :integer
	  add_index :tickets, :state_id
      add_column :comments, :state_id, :integer
    end

    def down
	  drop_table :states
	  remove_column :tickets, :state_id
	  remove_column :comments, :state_id
	end
  end
end
