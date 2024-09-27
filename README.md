# Material-Outlined-Floating-TextField-IOS-Swift

# MaterialOutlinedFloatingTextField

![Swift Version](https://img.shields.io/badge/Swift-5.0-orange.svg)
![License](https://img.shields.io/badge/License-MIT-blue.svg)

A customizable, reusable outlined floating text field component for iOS built on Material Design principles.

## Overview

The **MaterialOutlinedFloatingTextField** is a reusable and customizable text field component for iOS applications. Built with Material Design principles, this text field supports floating labels, outlined styles, and various customization options, making it ideal for modern iOS app development.

## Features

- **Floating Label**: Animates when the field is focused or filled.
- **Customizable Colors**: Set different outline colors for normal, editing, and required states.
- **Secure Text Entry**: Option to toggle secure text entry for password fields.
- **IBInspectable Properties**: Easily customizable in Interface Builder.
- **Accessibility**: Fully accessible for all users.

## Installation

### 1. Add the Pod

To use **MaterialOutlinedFloatingTextField**, you need to include the `MaterialComponents` pod in your project. Open your `Podfile` and add the following line:

```ruby
pod 'MaterialComponents'
```

### 2. Install the Pods

Run the following command in your terminal:

```bash
pod install
```

### 3. Open the project

Open the `MaterialOutlinedFloatingTextField.xcodeproj` file in Xcode.

### 4. Create an instance of the text field

You can initialize the text field programmatically:

```swift
let textField = CustomOutlinedFloatingTextField()
textField.titleText = "Your Label"
textField.placeholderText = "Enter text"
textField.frame = CGRect(x: 20, y: 100, width: 300, height: 60)
self.view.addSubview(textField)
```

### 5. Customize the text field

You can customize the text field using IBInspectable properties:

```swift
textField.outlineColorEditing = .blue
textField.outlineColorNormal = .gray
textField.outlineColorRequired = .red
textField.isRequired = true
textField.textColor = .black
textField.font = UIFont.systemFont(ofSize: 16)
```

## Class Code

Here is the complete implementation of the `CustomOutlinedFloatingTextField`:

```swift
// (Your class code here)
```

## Examples

Here are some examples of the **MaterialOutlinedFloatingTextField** in action:

![Material UITextField](Screenshots/example1.png)
![Material UITextField Focused](Screenshots/example2.png)

## Contributing

Contributions are welcome! Please feel free to submit a pull request or create an issue for any suggestions or improvements.

<!--## License

//This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.-->

## Contact

If you have any questions or feedback, please reach out to me:

- **Email:** kaushalnagar997@gmail.com
- **GitHub:** [Kaushal_Nagar](https://github.com/Kaushal-Nagar)
```

### Key Additions

- **Installation Section**: Now includes instructions to add the `MaterialComponents` pod, as well as commands to install it.

Feel free to adjust the README further to suit your needs, and let me know if there are any other features or sections you’d like to include!
