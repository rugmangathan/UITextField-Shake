UITextField+Shake
=============
This is a https://github.com/andreamazz/UITextField-Shake/blob/master/README.md#setup-with-cocoapods
UITextField extension for swift that adds a shake animation like the password field of the OsX login screen. 

Usage
--------------------
```objc
// Shake with the default speed
self.textField.shake(10, delta:5) //10 no. of shakes with 5 points wide

// Shake with a custom speed
self.sampleText.shake(10, delta: 5, speed: 0.10) //10 no. of shakes with 5 points wide in 100ms per shake

// Shake with a custom speed and direction
self.sampleText.shake(10, delta: 5, speed: 0.10, shakeDirection: ShakeDirection.ShakeDirectionHorizontal) 

// Shake with completion handler
self.sampleText.shake(10, delta: 5.0, speed: 0.10, completionHandler: {
            // your code
        })
```

MIT License
==================
	Copyright (c) 2014 Rugmangathan. All rights reserved.

	Permission is hereby granted, free of charge, to any person obtaining a
	copy of this software and associated documentation files (the "Software"),
	to deal in the Software without restriction, including
	without limitation the rights to use, copy, modify, merge, publish,
	distribute, sublicense, and/or sell copies of the Software, and to
	permit persons to whom the Software is furnished to do so, subject to
	the following conditions:

	The above copyright notice and this permission notice shall be included
	in all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
	OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
	MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
	IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
	CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
	TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
	SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
