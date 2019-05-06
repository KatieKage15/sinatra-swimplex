# Add seed data here. Seed database with `rake db:seed`
katie = Instructor.create(name: "Katie", email: "wildayk@swimplex.com", username: "wildayk", shift: "Friday", pay_rate: 30)
Swimmer.create(name: "Tim", age: 5, day_swim: "Friday", notes: "Tim needs to work on kicking!", instructor: katie)
Swimmer.create(name: "Syd", age: 8, day_swim: "Friday", notes: "Syd is a great swimmer!", instructor: katie)

robb = Instructor.create(name: "Robb", email: "rgutierrez@swimplex.com", username: "rgutierrez", shift: "Thursday", pay_rate: 25)
Swimmer.create(name: "Sarah", age: 6, day_swim: "Thursday", notes: "Sarah needs to stop talking so much!", instructor: robb)
Swimmer.create(name: "Peter", age: 7, day_swim: "Thursday", notes: "Peter has a great backstroke!", instructor: robb)
