class <%= class_name %> < ActiveRecord::Base
  #Relationships
  <% belongs.each do |b| %>belongs_to :<%= b %>
  <% end %>
  #Validations
  <%- notnulls.each do |nn| %>validates_presence_of :<%= nn %>
  <% end -%>
  <%- numerics.each do |num| %>validates_numericality_of :<%= num %>, :allow_nil => true
  <% end -%>
  <%- lengths.each do |c,s| %>validates_length_of :<%= c %>, :within => 0..<%= s %>, :allow_nil => true
  <% end -%>
  <%- belongs.each do |b| %>validates_associated :<%= b %>, :allow_nil => true 
  <% end -%>
  
end
