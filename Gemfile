source 'https://rubygems.org'

# A continuación están todas las gem que voy a usar en el proyecto
gem 'rails', '4.1.6'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'

# Gem utilizada para los estilos
gem 'bootstrap-sass', '~> 3.3.1.0'

# Gem utilizada para la lógica de las busquedas utilizadas para filtrar los incidentes
#gem 'sunspot_rails'

gem 'sdoc', '~> 0.4.0',          group: :doc
gem 'spring',        group: :development

# Motor de base de datos utilizado en ambientes de testing y desarrollo
group :development, :test  do
    gem 'sqlite3',  '1.3.9'
end

# Motor de base de datos utilizado en ambiente de producción
group :production do
    gem 'pg',   '0.17.1'
    gem 'rails_12factor',   '0.0.2'
end