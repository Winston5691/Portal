appoint1=Appointment.create(name: 'Chevy', note: 'pass')
appoint2=Appointment.create(name: 'jaguar', note: 'cancel')
appoint3=Appointment.create(name: 'Macmahon', note: 'taker')
appoint4=Appointment.create(name: 'rover', note: 'pass')

"Create results"
res1=Result.create(percentage: 89, course_id: 1, student_id: 1)
res2=Result.create(percentage: 34, course_id: 2, student_id: 2)
res3=Result.create(percentage: 56, course_id: 3, student_id: 3)
res4=Result.create(percentage: 35, course_id: 1, student_id: 4)

"create courses"
course1=Course.create(name: 'Data Science', results_id: 1)
course2=Course.create(name: 'Software dev', results_id: 2)
course3=Course.create(name: 'DevOPs', results_id: 3)
course4=Course.create(name: 'Comp science', results_id: 4)

"create students"
student1=Student.create(course_id: 1, appointment_id: 2, name: 'Wokabi', email: 'wokabi@gmail.com', registration: '2', user_id: 2, results_id: 1)
student2=Student.create(course_id: 2, appointment_id: 3, name: 'Tolio', email: 'toloi@gmail.com', registration: '3', user_id: 3, results_id: 4)
student3=Student.create(course_id: 3, appointment_id: 1, name: 'Ibrahim', email: 'ibrahim@gmail.com', registration: '4', user_id: 4, results_id: 3)
student4=Student.create(course_id: 4, appointment_id: 4, name: 'Mbigia', email: 'mbugua@gmail.com', registration: '2', user_id: 1, results_id: 2)

"Create users"
user1=User.create(email: 'wokabi@gmail.com', password: '1234', role: 'student', reset_password_token: '1234')
user1=User.create(email: 'toloi@gmail.com', password: '1234', role: 'student', reset_password_token: '1234')
user1=User.create(email: 'ibrahim@gmail.com', password: '1234', role: 'student', reset_password_token: '1234')
user1=User.create(email: 'mbugua@gmail.com', password: '1234', role: 'student', reset_password_token: '1234')
  