class SchoolImages < ActiveRecord::Migration
  def change
    create_table(:school_images) do |t|
      t.string :image_url
    end

  end

end
