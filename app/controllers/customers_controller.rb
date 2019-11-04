class CustomersController < ApplicationController
  def show
    @filter = 'all'
    @customers = Customer.all
  end

  def show_alphabetized
    @filter = 'alphabetical'
    @customers = Customer.order(:full_name)
    render 'show'
  end

  def show_missing_email
    @filter = 'no_email'
    @customers = Customer.where(email_address: '')
    render 'show'
  end
end
