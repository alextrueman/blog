class AddImageColumnsToDriver < ActiveRecord::Migration[6.0]
  def change
    add_attachment :drivers, :image
  end
end
