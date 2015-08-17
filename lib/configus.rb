Configus.build Rails.env do
  env :production do
    karamzin do
      gem_link 'https://rubygems.org/gems/karamzin'
    end
  end
  env :development, parent: :production
  env :test, parent: :development
end
