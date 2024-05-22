class AddAddressToUniqorns < ActiveRecord::Migration[7.1]
  def change
    add_column :uniqorns, :address, :string
  end
end
