class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :login, null: false #(can create even if there no data)
      #Ex:- :null => false
      t.string :name
      t.string :url
      t.string :avatar_url
      t.string :provider
      t.timestamps
    end
  end
end
#db validations
