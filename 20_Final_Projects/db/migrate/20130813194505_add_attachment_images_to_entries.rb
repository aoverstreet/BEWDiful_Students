class AddAttachmentImagesToEntries < ActiveRecord::Migration
  def self.up
    change_table :entries do |t|
      t.attachment :images
    end
  end

  def self.down
    drop_attached_file :entries, :images
  end
end
