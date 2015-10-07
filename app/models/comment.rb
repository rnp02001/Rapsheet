class Comment < ActiveRecord::Base
  acts_as_tree order: 'created_at DESC'


  def self.flatten_nested_hash(hash)
    hash.flat_map{|k, v| [k, *flatten_nested_hash(v)]}
  end

end
