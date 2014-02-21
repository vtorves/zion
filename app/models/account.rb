class Account < ActiveRecord::Base
belongs_to :owner, class_name: 'User' 
has_many_to :tickets
  validates :owner, presence: true
  accepts_nested_attributes_for :owner

end