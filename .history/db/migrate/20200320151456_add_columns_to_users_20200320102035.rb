# frozen_string_literal: true

class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column t.string :password_digest
    end
  end
