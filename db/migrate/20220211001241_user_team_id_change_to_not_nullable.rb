class UserTeamIdChangeToNotNullable < ActiveRecord::Migration[7.0]
  def change
    change_column_null :users, :team_id, false
  end
end
