# frozen_string_literal: true

class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :firstname
      t.string :lastname
      t.string :gender
      t.date :dob
      t.string :country
      t.integer :phonenumber
      t.integer :user_id

      t.timestamps
    end
  end
end
