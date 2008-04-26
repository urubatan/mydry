Gem::Specification.new do |s|
  s.name = "mydry_generator"
  s.version = "0.2.2"
  s.date = "2008-04-26"
  s.summary = "An easy way to generate models for your application based on the information you already provided in the migrations"
  s.email = "rodrigo@urubatan.com.br"
  s.homepage = "http://github.com/urubatan/mydry"
  s.description = "mydry is a rails generator that enables you to work in a drier way, using the information you already provided in the migration to create your models, for example all the non nulls, uniques, numerics and relations defined in the database are already defined in the model with the corresponding validation."
  s.has_rdoc = true
  s.authors = ["Rodrigo Urubatan Ferreira Jardim"]
  s.files = ["generators/drymodel/drymodel_generator.rb","generators/drymodel/templates/fixtures.yml","generators/drymodel/templates/migration.rb","generators/drymodel/templates/model.rb","generators/drymodel/templates/unit_test.rb","generators/dryscaffold/dryscaffold_generator.rb","generators/dryscaffold/templates/controller.rb","generators/dryscaffold/templates/functional_test.rb","generators/dryscaffold/templates/helper.rb","generators/dryscaffold/templates/layout.html.erb","generators/dryscaffold/templates/style.css","generators/dryscaffold/templates/view_edit.html.erb","generators/dryscaffold/templates/view_index.html.erb","generators/dryscaffold/templates/view_new.html.erb","generators/dryscaffold/templates/view_show.html.erb","generators/drymodel/drymodel_generator.rb","generators/drymodel/templates/fixtures.yml","generators/drymodel/templates/migration.rb","generators/drymodel/templates/model.rb","generators/drymodel/templates/unit_test.rb","generators/dryscaffold/dryscaffold_generator.rb","generators/dryscaffold/templates/controller.rb","generators/dryscaffold/templates/functional_test.rb","generators/dryscaffold/templates/helper.rb","generators/dryscaffold/templates/layout.html.erb","generators/dryscaffold/templates/style.css","generators/dryscaffold/templates/view_edit.html.erb","generators/dryscaffold/templates/view_index.html.erb","generators/dryscaffold/templates/view_new.html.erb","generators/dryscaffold/templates/view_show.html.erb","lib/mydry.rb","README","test/mydry_test.rb"]
  s.test_files = ["test/mydry_test.rb"]
  s.rdoc_options = ["--main", "README"]
  s.extra_rdoc_files = ["README"]
  s.add_dependency("rails", ["> 2.0.0"])
end
