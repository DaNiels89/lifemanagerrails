# frozen_string_literal: true

class Profiles < ActiveRecord::Migration[6.0]
  def change
    t.string :firstname
    t.string :lastname
    t.string :gender
    t.date :dob
    t.string :country
    t.integer :phone

    t.timestamps
  end
end
