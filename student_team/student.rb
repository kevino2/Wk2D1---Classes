class Student
  attr_accessor :name, :cohort, :favourite_language

  def initialize (name, cohort, favourite_language)
    @name = name
    @cohort = cohort
    @favourite_language = favourite_language
  end



  def get_user_to_talk(name)
    if  @name == name
      return "I can talk"
    end

  end

  def fave_programming_language(favourite_language)
    return "I love #{favourite_language}"

end
end
