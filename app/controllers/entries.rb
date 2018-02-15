get "/post/:entry" do
  @post = Entry.where(id: params[:entry])
  erb :chosen_entry
end

post "/post/edit_entry/:id" do
	puts params.inspect
	@post = Entry.where(id: params[:id])
	erb :edit_entry
end