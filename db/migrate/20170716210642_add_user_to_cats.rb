class AddUserToCats < ActiveRecord::Migration[5.1]
  def change
    add_reference :recipes, :user, index: true
  end
end
