FactoryGirl.define do
  factory :user do
    email('test@gmail.com')
    password('123456')
  end

  # factory :summary do
  #   user = User.create(email: 'cb@gmail.com', password: '123123')
  #   user
  #   date('2017-01-22')
  # end
  #
  # factory :exercise do
  #   workout('run')
  #   calorie_burn(100)
  # end
  #
  factory :food do
    summary
    name('eggs')
    calorie_intake(200)
  end
end
