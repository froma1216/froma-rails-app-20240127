class AddSubmitterToPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :submitter, :integer
  end
end
