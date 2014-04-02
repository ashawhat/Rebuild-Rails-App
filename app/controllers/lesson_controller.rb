class LessonController < ApplicationController

  def index
    @lessons = Lesson.all
    render('lessons/index.html.erb')
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.create(:name => params[:name], :content => params[:content])
    if @lesson.save
       render('lessons/success.html.erb')
    else
       render('lessons/index.html.erb')
    end
  end

  def show
    @lesson = Lesson.find(params[:id])
    render('lessons/show.html.erb')
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    render('lessons/delete.html.erb')
  end

end
