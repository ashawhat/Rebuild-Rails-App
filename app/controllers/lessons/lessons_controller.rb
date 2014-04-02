class LessonsController < ApplicationController

  def index
    @lessons = Lessons.all
    render('lessons/index.html.erb')
  end
