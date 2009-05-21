class CreateAssets < ActiveRecord::Migration
  def self.up
    create_table :assets do |t|
      t.integer :product_id     
      t.integer :parent_id      
      t.string :description      
      t.integer :size      
      t.string :content_type      
      t.string :filename      
      t.integer :height      
      t.integer :width      
      t.string :thumbnail      
      t.string :type      
      t.string :state
      t.timestamp :created_at     
      t.timestamp :updated_at    
    end
  end

  def self.down
    drop_table :assets  
  end
end
