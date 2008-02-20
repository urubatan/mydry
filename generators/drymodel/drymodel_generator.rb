require 'mydry'

class DrymodelGenerator < Mydry::GeneratorBase
  def manifest
    load_meta_from_db

    record do |m|
      m.template 'model.rb', "app/models/#{file_name}.rb"
      m.template 'fixtures.yml', "test/fixtures/#{file_name}.yml"
      m.template 'unit_test.rb', "test/unit/#{file_name}_test.rb"
    end
  end
end
