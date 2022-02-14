# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.create(name: "Kate Godwin", email: "kate@god.win")
User.create(name: "Mike Wilder", email: "mike@wild.er")

Project.create(due_date: "10/4/2022", name: "Jones Wedding", kind: "wedding invites", user_id: 1)
Project.create(due_date: "10/5/2023", name: "James Wedding", kind: "wedding invites", user_id: 2)

Milestone.create(due_date: "09/04/2022", name: "ship invites", description: "invites must be shipped by this date", project_id: 1)
Milestone.create(due_date: "06/04/2022", name: "present proofs", description: "give customer time to review and suggest changes", project_id: 1)
Milestone.create(due_date: "05/05/2022", name: "present proofs", description: "give customer time to review and suggest changes", project_id: 2)