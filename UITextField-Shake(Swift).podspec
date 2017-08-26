Pod::Spec.new do |spec|

    spec.name              = 'UITextField-Shake(Swift)'
    spec.version           = '1.1'
    spec.summary           = 'UITextField-Shake adds shake animation like the password field of the OsX login screen.'
    spec.homepage          = 'https://github.com/RMK19/UITextField-Shake.git'
    spec.license           = 'MIT'
    spec.author            = {
        'Rugmangathan' => 'mkrugmangathan@gmail.com'
    }

    spec.platform     = :ios, "8.0"
    spec.source            = {
        :git => 'https://github.com/RMK19/UITextField-Shake.git',
        :tag => spec.version
    }
    spec.ios.deployment_target = "8.0"
    spec.requires_arc = true
    spec.source_files      = 'UITextField-Shake', 'UITextField-Shake/*.{swift}'

end
