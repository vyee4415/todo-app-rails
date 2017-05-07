class ListController < ApplicationController
  def index

  end
  def show
    @id = params['id']
    if @id.to_i == 1
      @todos = [
        { name: 'homework'}, 
        { name: 'study'} 
      ]
    elsif @id.to_i == 2
      @todos = [
        { name: 'chores'}, 
        { name: 'sweep floor'} 
      ]
    else
      @todos = [
        { name: ':D', is_checked: true }, 
        { name: 'D:', is_checked: false } 
      ]
    end
    l = List.find_by_id(@id)
    @list_name = l.name
  end
  def new
    l = List.new 
    l.name = params['name'] 
    l.save 
    redirect_to "/list/#{ l.id }"
  end
  def create
  
  end
  def edit
    l = List.find_by_id(params['id'])
    @list_name = l.name
    @list_id = l.id
  end
  def update
    l = List.find_by_id(params['id'])
    l.name = params['name']
    l.save
    redirect_to "/list/#{l.id}" 
  end
end

