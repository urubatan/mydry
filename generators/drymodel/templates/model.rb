class <%= class_name %> < ActiveRecord::Base
  #Relationships
  <% belongs.each do |b| %>belongs_to :<%= b %>
  <% end %>
  #Validations
  <%= "validates_presence_of :#{notnulls.join ', :'}" if notnulls.any? %>
  <%= "validates_numericality_of :#{numerics.join ', :'}, :allow_nil => true" if numerics.any? %>
  <% lengths.each do |c,s| %>validates_length_of :<%= c %>, :maximum => <%= s %>, :allow_nil => true
  <% end %>
  <% belongs.each do |b| %>validates_associated :<%= b %>, :allow_nil => true 
  <% end %>
  
end
