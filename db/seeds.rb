# Add seed data here. Seed database with `rake db:seed`
katie = Instructor.create(email: "wildayk@swimplex.com", password_digest: "abc123", username: "wildayk")
Swimmer.create(name: "Tim", age: 5, day_swim: "Friday", notes: "Tim needs to work on kicking!")
Swimmer.create(name: "Syd", age: 8, day_swim: "Saturday", notes: "Syd is a great swimmer!")

robb = Instructor.create(email: "rgutierrez@swimplex.com", password_digest: "iloveiguanas", username: "rgutierrez")
Swimmer.create(name: "Sarah", age: 6, day_swim: "Wednesday", notes: "Sarah needs to stop talking so much!")
Swimmer.create(name: "Peter", age: 7, day_swim: "Monday", notes: "Peter has a great backstroke!")

ryan = Instructor.create(email: "ryanb@swimplex.com", password_digest: "birchplease", username: "ryanb")
Swimmer.create(name: "Pamela", age: 13, day_swim: "Sunday", notes: "Pamela is ready for swim team!")
Swimmer.create(name: "Madison", age: 10, day_swim: "Thursday", notes: "Madison has been absent 3 times.")
