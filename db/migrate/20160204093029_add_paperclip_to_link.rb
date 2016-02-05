class AddPaperclipToLink < ActiveRecord::Migration
  def change
  	add_attachment :links, :image  
  end
end
