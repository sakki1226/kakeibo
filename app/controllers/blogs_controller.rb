class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
    @blog = Blog.new
    @expenses_by_date = Expense.group("DATE(date)").sum(:price)
  end
end
