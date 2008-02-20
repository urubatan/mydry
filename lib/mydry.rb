module Mydry
   class GeneratorBase < Rails::Generator::NamedBase
      attr_accessor :notnulls, :lengths, :numerics, :belongs

      def load_meta_from_db
         con = ActiveRecord::Base.connection
         cols = con.columns table_name
         @notnulls = []
         @lengths = {}
         @numerics = []
         @attributes = []
         @belongs = []
         cols.each do |c|
            @notnulls << c.name if !c.null && c.name != 'id' && !(c.name =~ /_id$/)
            @lengths[c.name] = c.limit if c.limit && !(c.name =~ /_id$/)
            @numerics << c.name if c.name!= 'id' && [:integer, :numeric, :decimal, :float].index(c.type) && !(c.name =~ /_id$/)
            @belongs << c.name.gsub(/(.*)_id$/, '\1') if c.name =~ /_id$/
            attrib = Rails::Generator::GeneratedAttribute.new(c.name,c.type)
            attrib.column = c
            attrib.default = c.default
            @attributes << attrib if c.name != 'id' && !(c.name =~ /_id$/)
         end

      end
   end
end
module Rails
  module Generator
    class GeneratedAttribute
      attr_accessor :default
    end
  end
end
