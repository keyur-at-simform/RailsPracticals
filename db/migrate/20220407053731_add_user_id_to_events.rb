class AddUserIdToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :user_id, :int
  end
end
