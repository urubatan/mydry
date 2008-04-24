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
            @notnulls << c.name if !c.null && not_id(c)
            @lengths[c.name] = c.limit if c.limit && not_id(c) && !is_number(c) 
            @numerics << c.name if not_id(c) && !is_number(c)
            @belongs << c.name.gsub(/(.*)_id$/, '\1') if is_ref(c)
            attrib = Rails::Generator::GeneratedAttribute.new(c.name,c.type)
            attrib.column = c
            attrib.default = c.default
            @attributes << attrib if not_id(c)
         end
      end
      private
        def not_id(c)
          !is_ref(c) && c.name != 'id'
        end
        def is_number(c)
          [:integer, :numeric, :decimal, :float].index(c.type) 
        end
        def is_ref(c)
          c.name =~ /_id$/
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
