module WelcomeHelper
	def gravatar_src(email)
    hash = Digest::MD5.hexdigest(email.downcase)
		image_src = "http://www.gravatar.com/avatar/#{hash}"
	end

	def single_or_not(word, count)
		r = count > 1 ? "#{word}s" : word
	end
end
