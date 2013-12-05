class AddColumnsToObservation < ActiveRecord::Migration
  def change
    add_column :observations, :From, :string
    add_column :observations, :MediaUrl0, :string
    add_column :observations, :MediaContentType0, :string
    add_column :observations, :Body, :string
  end
end
