class CreateConnectionsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :connections, id: false do |t|
        t.integer :user_id
        t.integer :follower_user_id
    end

    add_index(:connections, [:user_id, :follower_user_id], :unique => true)
    add_index(:connections, [:follower_user_id, :user_id], :unique => true)
  end
end
