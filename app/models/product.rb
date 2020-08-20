class Product < ApplicationRecord
    scope :filter_by_arabic_name, -> (arabic_name) { where("arabic_name like ?", "#{arabic_name}%")}
    scope :filter_by_english_name, -> (english_name) { where("english_name like ?", "#{english_name}%")}

    validates_presence_of :arabic_name, :english_name
end
