require File.dirname(__FILE__) + '<%= '/..' * class_nesting_depth %>/../test_helper'

class <%= class_name %>Test < ActiveSupport::TestCase
  # Replace this with your real tests.
  def test_truth
    assert true
  end

<%- notnulls.each do |nn| %>
  def test_<%= nn %>_not_null
    assert false
  end

<% end -%>
<%- lengths.each do |nn| %>
  def test_<%= nn[0] %>_length
    assert false
  end

<% end -%>
<%- numerics.each do |nn| %>
  def test_<%= nn %>_numeric_only
    assert false
  end

<% end -%>
end
