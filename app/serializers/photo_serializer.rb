class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :length, :director, :description, :category, :discount, :female_director, :summary

  def summary
    "#{self.object.title} - #{self.object.description[0..49]}..."
  end
end

