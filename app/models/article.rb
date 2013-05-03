class Article < ActiveRecord::Base
  attr_accessible :body, :delta, :title

  define_index do
    indexes title, body

    set_property :delta => :delayed
  end
end
