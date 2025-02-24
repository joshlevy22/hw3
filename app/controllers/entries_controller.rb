class EntriesController < ApplicationController
def create
  new_entry = Entry.new
  new_entry.title = params[:title]
  new_entry.description = params[:description]
  new_entry.occurred_on = params[:occurred_on]
  new_entry.place_id = params[:place_id]
  new_entry.save
  redirect_to "/places/#{new_entry.place_id}"
end

end
