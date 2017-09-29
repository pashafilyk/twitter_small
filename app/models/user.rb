class User < ApplicationRecord
	mount_uploader :avatar, AvatarUploader

	devise :database_authenticatable, :registerable,
			:recoverable, :rememberable, :trackable, :validatable

	attr_accessor :first_name, :last_name, :email, :remember_me, :avatar, :avatar_cache, :remove_avatar

	validates_presence_of   :avatar
  	validates_integrity_of  :avatar
  	validates_processing_of :avatar
end
