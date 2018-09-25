class StudentMailer < ApplicationMailer
  default from: 'dami210.patel@gmail.com'

  def welcome(student)
    @student = student
    mail(to: @student.student_email, subject: 'Welcome to MySite')
  end
end
