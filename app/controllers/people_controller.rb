class PeopleController < ApplicationController
	def index
	end

	def sample
		render "index"
	end

	def json
		personal = {'name' => 'Yamada', 'age' => 28}
		render :json => personal
	end

	def xml
		personal = {'name' => 'Yamada', 'age' => 28}
		render :xml => personal
	end

	def inputParames
		render :text => "upper = #{params[:upper]}, lower = #{params[:lower]}"
	end

	def customModel
		person = Person.new()
		person.FirstName = "Shoji"
		person.LastName = "Kunitomo"
		person.Age = 27

		render :json => person
	end

	def abc
		abc = Abc.new()
		abc.FirstName = "Shoji"
		abc.LastName = "Kunitomo"
		abc.Age = 27
		abc.Sex = 'Male'

		render :json => abc
	end
end