Pod::Spec.new do |s|
    s.name = 'MRuby'
    s.version = '2.0.0.1'
    s.authors = 'rinsuki', 'mruby original authors'
    s.license = 'Custom License'
    s.homepage = 'https://github.com/rinsuki/mruby-pod'
    s.source = {
        :git => 'https://github.com/rinsuki/mruby-pod.git',
        :tag => s.version.to_s,
    }
    s.summary = 'mruby + ios + :hearts:'
    s.prepare_command = './build.sh'
    s.platform = :ios, '10.0'

    s.module_name = 'MRuby'
    s.header_dir = 'MRuby/src/mruby/include'

    s.preserve_paths = 'MRuby/src/mruby/'
end