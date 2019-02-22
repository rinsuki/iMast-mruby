Pod::Spec.new do |s|
    s.name = 'MRuby'
    s.version = '2.0.0.1'
    s.authors = 'rinsuki', 'mruby original authors'
    s.homepage = 'https://github.com/rinsuki/mruby-pod'
    s.source = {
        :git => 'https://github.com/rinsuki/mruby-pod.git',
        :tag => s.version.to_s,
    }
    s.summary = 'mruby + ios + :hearts:'

    s.source_files = 'src/mruby/include/**/*.h'
    s.vendored_libraries = 'libmruby.a'
end
