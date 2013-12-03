class RemoveVerifiedColumnAgain < ActiveRecord::Migration
  def self.up
    remove_column :users, :verified
  end
end
