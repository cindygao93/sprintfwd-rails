class RenameTeamColumnInUsers < ActiveRecord::Migration[7.0]
  def change
    change_table :users do |t|
      t.rename :team, :team_id
    end
  end
end
