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
  end
end