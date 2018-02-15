get '/' do
  @all = Entry.all
  @tags = Tag.all
  erb :index
end

# post "/" do
#   Tag.find_or_create_by(category: params[:category]).save!
#   Entry.new(title: params[:title], body: params[:body], author: params[:author], date: params[:date]).save!
#   redirect '/'
# end

# post "/" do
#   Entry.destroy(params[:id])
#   redirect "/"
# end

post "/" do 
	Tag.find_or_create_by(category: params[:category]).save!
	Entry.update(title: params[:title], body: params[:body], author: params[:author], date: params[:date])
	redirect "/"
end

get "/new_entry" do
	erb :new_entry, layout: false
  # erb :new_entry
end

# How to do multiple posts/gets to the homepage?
# How to set up the entries to tags relationship within the join table and then search it with activerecord.
