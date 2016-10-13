class IndexController < ApplicationController
  def wall
  	@tweets = Tweet.all
	@users=User.all
	@votes=Vote.all
	@name=User.find(session[:user_id]).username
  end

  def signIn
  end

  def blah
  	username = params[:username]
	password = params[:password]
	user = User.find_by_username(username)
	if user
		if user.password == password
			puts "setting session user id to", user.id
			session[:user_id] = user.id
			redirect_to '/index/wall'
		else
			redirect_to '/index/signIn'
		end
	else
		user = User.create(:username => username, :password => password)
		session[:user_id] = user.id
		redirect_to '/index/wall'
	end
  end
  def tweet
  	data = params[:data]
	user_id =session[:user_id]
	tweet=Tweet.create(:data => data, :user_id => user_id)
	arr=tweet.data.split(/[\s,@]/)
	arr1=[]
	users=User.all
	name=User.find(session[:user_id]).username
	arr.each do |word|
		users.each do |user|
			if user.username==word
				arr1.push(word)
			else
			end
		end
	end
	if arr1.size()!=0
		Notificaton.create(:tweet_id=>tweet.id,:from=>name,:to=>arr1)
	else
	end
	
	vote=Vote.create(:tweet_id=>tweet.id,:user_id=>user_id,:upvotes=>0)
	redirect_to '/index/wall'
  end
  def inc

  	id = params[:id].to_i
	vote=Vote.find_by_tweet_id(id)
	vote.upvotes=vote.upvotes+1
	vote.save
	redirect_to '/index/wall'
  end
  def logout
  	session[:user_id]=nil;
  	redirect_to '/'
  end
  def notification
  	@name=User.find(session[:user_id]).username
  	@notifications=Notificaton.all
  end
  def message
  	@messages=Message.all
  	@name=User.find(session[:user_id]).username
  end

   def sendTheMessage
  	data = params[:data]
	to =params[:to]
	from=User.find(session[:user_id]).username
	message=Message.create(:data=>data, :to=>to,:from=>from)
	redirect_to '/index/message'
  end

end
