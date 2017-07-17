class User < ApplicationRecord
  has_secure_password
  has_and_belongs_to_many :connections,
      class_name: "User",
      join_table:  :connections,
      foreign_key: :user_id,
      association_foreign_key: :follower_user_id
  has_many :recipes
end
