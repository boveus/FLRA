# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Employee.destroy_all
SafetyReport.destroy_all
Hazard.destroy_all
PreventionAction.destroy_all
SeverityValue.destroy_all

icons = ['Bio-hazard-icon.png', 'icon.png', 'test.png']
hazards = ['Fall', 'Fire', 'Electrocution', 'Chemical exposure', 'Trip hazard']
preventive_actions = ['Wear a harness', 'Wear rubber gloves', 'Wear helmet', 'Chemical PPE', 'Wear steel-toed boots']

tasks = ['Cleanup with a shovel',
  'Cleanup with a hose',
  'Collecting carbon samples',
  'Rebuilding a pump',
  'Rebuilding a PM on a pump',
  'Light changouts',
  'Conveyer work - changing out rollers',
  'Conveyer work - tracking of the conveyer',
  'Chemical agent disposal',
  'Hazardous waste disposal',
  'Transporting hazardous waste',
  'Transporting chemical agents']


2000.times do
  name = Faker::Name.name
  employee = Employee.create(name: name, username: "#{name}123")
  report = SafetyReport.create(task: tasks.sample, employee: employee, created_at: Faker::Time.between(1.years.ago, Date.today))

  hazard = Hazard.create(name: hazards.sample, icon_path: icons.sample, safety_report: report)
  pa = PreventionAction.create(name: preventive_actions.sample , icon_path: icons.sample, hazard: hazard)
  sv = SeverityValue.create(value: rand(1..100), hazard: hazard)
end


# tasks
