# frozen_string_literal: true

class AddExpertiseToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :expertise, :string
  end
end
