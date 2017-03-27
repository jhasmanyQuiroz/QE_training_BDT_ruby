require_relative "./module"

class ModuleSample
	def greet
		Greets.greet
	end

	def goodNight
		Greets.goodNight
	end

	def goodAfternoon
		Greets.goodAfternoon
	end

	def sayBye
		SayBye.goodBye
	end

	def seeYouLater
		SayBye.seeYouLater
	end

	def takeCare
		SayBye.takeCare
	end
end

sample = ModuleSample.new
sample.greet
sample.goodNight
sample.goodAfternoon
sample.sayBye
sample.seeYouLater
sample.takeCare
