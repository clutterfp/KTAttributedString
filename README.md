# KTAttributedString
![buildpassing](https://img.shields.io/travis/rust-lang/rust.svg) ![mit](https://img.shields.io/github/license/mashape/apistatus.svg) ![Platform](https://img.shields.io/badge/platform-iOS-green.svg)

----

KTAttributedString is A more convenient way to deal with `NSAttributedString`.

Just like [Masonry](https://github.com/SnapKit/Masonry), it uses a simplified, chainable and expressive syntax.

```
@"Hello World".kt_attributedString
              .from(0).to(5)
              .red
              .match(@"World")
              .fontSize(15.0)
              .underline(NSUnderlineStyleSingle)
```

#Installation
**Manually**

1. Download the full file.
2. Drag the KTAttributedString folder to your project.

# License

KTAttributedString is available under the MIT license. See the LICENSE file for more info.

#TODO
* More tests and features
* CocoaPods support
* Documentation

#Reference

[Masonry](https://github.com/SnapKit/Masonry)
[Typeset](https://github.com/Draveness/Typeset)



