Pod::Spec.new do |spec|

    spec.name              = 'UITextField-Shake'
    spec.version           = '1.0'
    spec.summary           = 'UITextField-Shake adds shake animation like the password field of the OsX login screen.'
    spec.homepage          = 'https://github.com/RMK19/UITextField-Shake.git'
    spec.license           = {
        :type => 'MIT',
        :file => 'LICENSE'
    }
    spec.author            = {
        'Rugmangathan' => 'mkrugmangathan@gmail.com'
    }

    spec.platform     = :ios, "8.0"
    spec.source            = {
        :git => 'https://github.com/RMK19/UITextField-Shake.git',
        :tag => spec.version.to_s
    }
    spec.source_files      = 'UITextField-Shake', 'UITextField-Shake/*.{swift}'
    spec.requires_arc      = true

end