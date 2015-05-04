Pod::Spec.new do |s|

    s.name              = 'UITextField-Shake'
    s.version           = '1.0'
    s.summary           = 'UITextField-Shake adds shake animation like the password field of the OsX login screen.'
    s.homepage          = 'https://github.com/RMK19/UITextField-Shake'
    s.license           = {
        :type => 'MIT',
        :file => 'LICENSE'
    }
    s.author            = {
        'Rugmangathan' => 'mkrugmangathan@gmail.com'
    }
    s.source            = {
        :git => 'https://github.com/RMK19/UITextField-Shake',
        :tag => s.version.to_s
    }
    s.source_files      = 'UITextField-Shake/*.{swift}', 'UITextField-Shake/*.{swift}'
    s.requires_arc      = true

end