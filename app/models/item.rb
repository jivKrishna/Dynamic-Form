class Item < ApplicationRecord
  has_many   :variants, dependent: :destroy
  accepts_nested_attributes_for :variants, allow_destroy: true, reject_if: proc { |x| x["name"].empty?}
end
