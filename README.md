# Faker

This is a Swift port of the awesome PHP [Faker library](https://github.com/fzaninotto/Faker)
with more Swift specific code (not a direct port).

## Requirements

 - iOS 9.0+

## Installation

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects.

CocoaPods 0.36 adds supports for Swift and embedded frameworks. You can install it with the following command:

```bash
$ gem install cocoapods
```

To integrate Faker into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'
use_frameworks!

pod 'Faker'
```

Then, run the following command:

```bash
$ pod install
```

## Usage

### Generators

When using Faker, it has a very small set of data without configuration.
You can configure Faker to use specific locales by calling the
`Faker.Configuration.localize()` method:

```swift
use Faker

Faker.Configuration.localize()

// OR

Faker.Configuration.localize(NSLocale(localeIdentifier: "en_US"))
```

#### `Uuid`

The `Uuid` generator can be used to generate random UUID strings:

```swift
use Faker

Faker.Uuid.uuid()
```

#### `Person`

The `Person` generator can be used to generate identity information:

```swift
use Faker

Faker.Person.name()
Faker.Person.name(.Male)
Faker.Person.name(.Female)

Faker.Person.firstName()
Faker.Person.firstName(.Male)
Faker.Person.firstName(.Female)

Faker.Person.lastName()

Faker.Person.title()
Faker.Person.title(.Male)
Faker.Person.title(.Female)

Faker.Person.maleTitle()
Faker.Person.maleFirstName()

Faker.Person.femaleTitle()
Faker.Person.femaleFirstName()
```

#### `Lorem`

The `Lorem` generator can be used to generate random text:

```swift
use Faker

let word : String         = Faker.Lorem.word()
let words : String        = Faker.Lorem.words()
let words : [String]      = Faker.Lorem.words()

let sentence : String     = Faker.Lorem.sentence()
let sentences : String    = Faker.Lorem.sentences()
let sentences : [String]  = Faker.Lorem.sentences()

let paragraph : String    = Faker.Lorem.paragraph()
let paragraphs : String   = Faker.Lorem.paragraphs()
let paragraphs : [String] = Faker.Lorem.paragraphs()

let text : String         = Faker.Lorem.text()
```

#### `Company`

The `Company` generator can be used to generate company information:

```swift
use Faker

Faker.Company.company()
Faker.Company.companySuffix()
```

#### `Internet`

The `Internet` generator can be used to generate internet data:

```swift
use Faker

Faker.Internet.email()
Faker.Internet.safeEmail()
Faker.Internet.freeEmail()
Faker.Internet.companyEmail()

Faker.Internet.url()
Faker.Internet.tld()
Faker.Internet.slug()
Faker.Internet.domainWord()
Faker.Internet.domainName()
Faker.Internet.freeEmailDomain()
Faker.Internet.safeEmailDomain()

Faker.Internet.username()
Faker.Internet.password()

Faker.Internet.ipv4()
Faker.Internet.ipv6()
Faker.Internet.localIpv4()
Faker.Internet.mac()
```

### Extensions

#### Foundation

##### `Int`

```swift
use Faker

Int.random()            // 291651651
Int.random(1, max: 6)   // 4

Int.number()            // 3
Int.number(5)           // 41532

100.randomize(40)       // 110
```

##### `Double`

```swift
use Faker

Double.random()                     // 1979448.82734655
Double.random(3, min: 10, max: 20)  // 15.166

4.321231.decimals(2)                // 4.32
```

##### `String`

```swift
use Faker

"Lorem ipsum".shuffle()             // mLismore pu
"### %%%".numerify()                // 031 452
"??? ***".lexify()                  // ogv ]oM
"foo bar baz".split(" ")            // [ "foo", "bar", "baz" ]
```

##### `Array`

```swift
use Faker

["foo", "bar", "baz"].shuffle()     // In-place shuffle
["foo", "bar", "baz"].shuffled()    // Non-mutating method
["foo", "bar", "baz"].random()      // Random element from array
["foo", "bar", "baz"].random(2)     // Multiple random elements from array
```

##### `Character`

```swift
use Faker

Character.randomLetter()            // a
Character.randomAscii()             // 3
```

##### `NSDate`

```swift
use Faker

NSDate.random()
NSDate.random(NSDate().timeIntervalSince1970, max: NSDate().timeIntervalSince1970 + 3600)
```

#### UIKit

##### `UIColor`

```swift
use Faker

UIColor.random()        // Normal alpha level
UIColor.random(0.5)     // Custom alpha level
```

##### `UIImage`

```swift
use Faker

UIImage.random()
UIImage.random(1920, width: 1080, category: .People)

UIImage.avatar()
UIImage.avatar("ramon@apostle.nl")
UIImage.avatar("ramon@apostle.nl", size: 80)
```
