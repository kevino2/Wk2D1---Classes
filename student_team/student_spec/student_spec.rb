require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../student.rb')


class StudentTest < MiniTest::Test
  def test_get_student_name
    student = Student.new("Kevin", "G12", "Ruby")
    assert_equal("Kevin", student.name)
  end

  def test_get_student_cohort
    student = Student.new("Kevin", "G12", "Ruby")
    assert_equal("G12", student.cohort)
  end

  def test_change_name
    student = Student.new("Kevin", "G12", "Ruby")
    student.name = "Kevincent"
    assert_equal("Kevincent", student.name)
  end

  def test_change_cohort
    student = Student.new("Kevin", "G12", "Ruby")
    student.cohort = "G13"
    assert_equal("G13", student.cohort)
  end

  def test_get_user_to_talk
    student = Student.new("Kevin", "G12", "Ruby")
  result = student.get_user_to_talk("Kevin")
  assert_equal("I can talk", result)
end

  def test_favourite_programming_language
    student = Student.new("Kevin", "G12", "Ruby")
    result = student.favourite_language
    assert_equal("Ruby", result)
end
end
