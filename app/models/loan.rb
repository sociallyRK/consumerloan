class Loan < ActiveRecord::Base
  require 'open-uri'
  require 'typhoeus'
  require 'json'
  require 'csv'
  def generate_loanhash
    response = Typhoeus.get("https://api.consumerfinance.gov/data/hmda/slice/hmda_lar.json?#!/lien_status=1&loan_purpose=1&action_taken=1&select=as_of_year,loan_type_name,count&section=summary")
    result = JSON.parse(response.body)
    self.properties = result
  end
end
