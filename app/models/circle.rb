class Circle < ActiveRecord::Base
  
  def self.random(options = {})
    count = self.count()
    self.find(:first, options.merge(:offset => rand(count)))
  end
end
