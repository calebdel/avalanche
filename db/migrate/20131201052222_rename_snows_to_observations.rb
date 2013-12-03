class RenameSnowsToObservations < ActiveRecord::Migration
     def self.up
        rename_table :snows, :observations
      end
     def self.down
        rename_table :observations, :snows
     end
end
