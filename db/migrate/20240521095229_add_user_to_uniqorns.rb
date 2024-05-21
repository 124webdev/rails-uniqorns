class AddUserToUniqorns < ActiveRecord::Migration[7.1]
  def change
    add_reference :uniqorns, :user, null: false, foreign_key: true
  end
end
