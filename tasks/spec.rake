begin
  require 'spec/rake/spectask'

  Spec::Rake::SpecTask.new(:spec) do |spec|
    spec.pattern    = 'spec/**/*_spec.rb'
    spec.libs      << 'lib' << 'spec'
    spec.spec_opts << '--options' << 'spec/spec.opts'
  end

  desc "Run the specs, followed by the Cucumber features (if specs pass)"

rescue LoadError
  task :spec do
    abort 'rspec is not available. In order to run spec, you must: gem ' \
          'install rspec'
  end
end
