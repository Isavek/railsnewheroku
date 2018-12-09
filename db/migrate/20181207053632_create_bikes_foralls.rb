class CreateBikesForalls < ActiveRecord::Migration[5.2]
  def change
    create_table :bikes_foralls do |t|

      t.timestamps
    end
  end
end
