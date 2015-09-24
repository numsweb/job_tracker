class StyleStatusLink < ActiveRecord::Migration
  def change
    add_column :statuses, :link_style, :string, default: "color: #000000"
  end
end
