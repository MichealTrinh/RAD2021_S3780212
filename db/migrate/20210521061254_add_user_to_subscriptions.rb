class AddUserToSubscriptions < ActiveRecord::Migration[6.1]
  def change
    add_reference :subscriptions, :user, foreign_key: true
  end
end
