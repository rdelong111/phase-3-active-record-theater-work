class Role < ActiveRecord::Base
  has_many :auditions

  def actors
    self.auditions.map do |audition|
      audition.actor
    end
  end

  def locations
    self.auditions.map do |audition|
      audition.location
    end
  end

  def lead
    self.auditions.each do |audition|
      if audition.hired
        return audition
      end
    end
    "No actor has been hired for this role."
  end

  def understudy
    second = false
    self.auditions.each do |audition|
      if audition.hired
        if !second
          second = true
        else
          return audition
        end
      end
    end
    "No actor has been hired for understudy for this role."
  end
end