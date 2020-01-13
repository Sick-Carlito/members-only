class RemoveRememberMeFromUsers < ActiveRecord::Migration[6.0]
  def change

    remove_column :users, :remember_me, :string
  end
end
