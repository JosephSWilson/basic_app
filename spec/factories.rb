FactoryGirl.define do
	factory :user do
		name 		"Joe Wilson"
		email		"josephswilson@gmail.com"
		password	"foobar"
		password_confirmation "foobar"
	end
end