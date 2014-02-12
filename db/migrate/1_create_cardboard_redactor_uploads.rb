class CreateCardboardRedactorUploads < ActiveRecord::Migration
  def change
    create_table :cardboard_redactor_uploads do |t|
      t.string :file_uid
      t.string :file_size
      t.string :file_name
    end
  end
end
