class DoropRecord < ActiveRecord::Migration[5.2]
  def change
    change_column :contacts, :title ,:string
  end
end
