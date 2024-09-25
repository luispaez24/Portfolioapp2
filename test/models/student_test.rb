require "test_helper"

class StudentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
test "should raise error when saving student without first name" do
  assert_raises ActiveRecord::RecordInvalid do
      Student.create!(last_name: "Nikola", school_email: "jokic@msudenver.edu", major: "CS")
  end
end

end


test "should not allow duplicate school_email" do
  # This retrieves the student with the key 'one' from students.yml
  student = students(:one)

  assert_raises ActiveRecord::RecordInvalid do
    Student.create!(first_name: "Run", last_name: "Time", school_email: "rtime@msudenver.edu", major: "CSI")
  end

end


test "should save student with valid attributes" do
  student = Student.create!(first_name: "Ruby", last_name: "Rails", school_email: "rrails@msudenver.edu", major: "CS")
  assert student.persisted?, "Student was not persisted"
end


  it "should not allow duplicate school_email" do
    student1 = Student.create!(school_email: 'test@example.com')
    student2 = Student.new(school_email: 'test@example.com')




  
end
