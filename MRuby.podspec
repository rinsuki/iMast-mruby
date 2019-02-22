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

    # https://qiita.com/makoto_kw/items/447448d8fcabc4a9e8e0#static-library%E3%82%92%E5%90%AB%E3%82%81%E3%82%8B%E3%82%88
    s.vendored_libraries = 'MRuby/dist/lib/libmruby.a'
    s.library = 'mruby'
    s.xcconfig = {
        # 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/MRuby/dist/lib"'
    }
end