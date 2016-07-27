require 'data_mapper'
require 'dm-postgres-adapter'

class Link

include DataMapper::Resource

property :id, Serial
property :title, String
property :url, String

has n, :taggings
has n, :tags, :through => :taggings

end
