class AddAcceptAgeToMember < ActiveRecord::Migration[5.1]
  def change
    add_column :members, :accept_age, :boolean
  end
end
