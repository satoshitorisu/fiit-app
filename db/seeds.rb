# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |index|
  no = index + 1
  user = Trainer.create(
    email:  "test#{no}@test.com",
    encrypted_password: "password",
    password:  "password",
    first_name: "山田",
    last_name: "太郎",
    username: "test"
  )
  user.save!
end


3.times do |index|
  no = index + 1
  user = User.create(
    email:  "test#{no}@test.com",
    encrypted_password: "password",
    password:  "password",
    trainer_id: 1,
    first_name: "山田",
    last_name: "太郎",
    username: "test"
  )
  # debugger
  user.save!
end


 60.times do |index|
   no = index + 1
   user = Weight.create(
     date:  Date.today - index,
     weightactual: 99 - index,
     weightplan:  100 - index,
     user_id: 1
   )
   user.save!
 end


8.times do |index|
  no = index + 1
  user = Trainingitem.create(
    # date:  Date.today - index,
    name:  "training#{no}",
    description:  "text#{no}",
    # times:  100 - index,
    # times:  100 - index,
    # status: 1,
    trainer_id: 1
  )
  user.save!
end


5.times do |index|
  no = index + 1
  user = Trainingmenu.create(
    date:  Date.today - index,
    user_id: 1
  )
  user.save!
end


5.times do |menu|
  menu = menu + 1
  8.times do |index|
    no = index + 1
    user = Trainingactual.create(
      trainingmenu_id: "#{menu}",
      trainingitem_id:"#{no}",
      weight: 50,
      time: 20,
      sets: 4,
      trainingname: "item#{no}"
    )
    user.save!
  end
end




# 5.times do |index|
#   no = index + 1
#   user = TrainingItem.create(
#     # date:  Date.today - index,
#     # times:  100 - index,
#     # name: "XXX",
#     training_menu_id: 1
#   )
#   user.save!
# end


# 8.times do |index|
#   no = index + 1
#   user = TrainersMenuItem.create(
#     name:  "XXX",
#     description: "XXXXXX",
#     trainer_id: 1,
#   )
#   user.save!
# end

