require 'dnd-namer/version'

module DndNamer
  def self.race_class(options = {})
    get_item('race_class', options).humanize
  end
  def self.adj(options = {})
    get_item('adj', options).humanize
  end
  def self.object(options = {})
    "#{ get_item('adj', options) } #{ get_item('race_class') }".humanize
  end
  def self.super_adj(options = {})
    get_item('super_adj', options).humanize
  end
  def self.super_object(options = {})
     "#{ get_item('super_adj', options) } #{ get_item('race_class', options) }".humanize
  end
  def self.heroku(options = {})
    "#{ get_item('super_adj', options) }-#{ get_item('race_class', options) }-#{ rand(1000..9999) }"
  end
  def self.get_item(filename, options = {})
    items = File.read(File.expand_path("../dnd-namer/#{filename}.txt", __FILE__)).split("\n")
    items.select!{ |item| item.length <= options[:max_length] } if options[:max_length]
    items.select!{|item | item[0,1] == options[:start_with]} if options[:start_with]
    items.sample
  end
end
