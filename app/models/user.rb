class User < ApplicationRecord
	validates :email, :presence => true, :uniqueness => true, format: { with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/ }
	has_secure_password
end
