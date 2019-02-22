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
    # s.prepare_command = './build.sh'
    s.platform = :ios, '10.0'

    s.source_files = 'MRuby/MRuby.framework/Headers/*.h'
    s.vendored_frameworks = 'MRuby/MRuby.framework'
    s.public_header_files = 'MRuby/MRuby.framework/Headers/mruby.h'
end