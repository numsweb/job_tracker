class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :name
      t.string :style
      t.string :link_style, default: "color: #000000"

      t.timestamps
    end
  end
end
