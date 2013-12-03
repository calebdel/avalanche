class RenameObservationsToObservation < ActiveRecord::Migration
  def change
      def self.up
        rename_table :observation, :observations
      end
     def self.down
        rename_table :observations, :observation
      end
end
end
