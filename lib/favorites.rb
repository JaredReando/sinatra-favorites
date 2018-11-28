require('pry')

class Favorite
  @@db_things = []

  def self.list_all_names
    return @@db_things
  end

  def self.give_me(id)
    @@db_things[id]
  end

  attr_reader :uid, :name
  attr_accessor :reasons

  def initialize (name)
    @name = name
    @reasons = []
    @uid = @@db_things.length + 1
    @@db_things.push(self)
  end

  def add_reason (input)
    @reasons.push(input)
  end

end
