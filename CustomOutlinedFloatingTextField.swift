import UIKit
import MaterialComponents

@IBDesignable
class CustomOutlinedFloatingTextField: UIView {
    
    private let textField = MDCOutlinedTextField()
    
    // Label text
    @IBInspectable
    var titleText: String? {
        didSet {
            textField.label.text = titleText
        }
    }
    
    // Placeholder text
    @IBInspectable
    var placeholderText: String? {
        didSet {
            textField.placeholder = placeholderText
        }
    }
    
    // Outline color for editing state
    @IBInspectable
    var outlineColorEditing: UIColor = .blue {
        didSet {
            textField.setOutlineColor(outlineColorEditing, for: .editing)
        }
    }
    
    // Outline color for normal state
    @IBInspectable
    var outlineColorNormal: UIColor = .gray {
        didSet {
            textField.setOutlineColor(outlineColorNormal, for: .normal)
        }
    }
    
    // Outline color for required state
    @IBInspectable
    var outlineColorRequired: UIColor = .red
    
    @IBInspectable
    var cornerRadius: CGFloat = 5.0 {
        didSet {
            textField.layer.cornerRadius = cornerRadius
            textField.layer.masksToBounds = true
        }
    }

    // Flag to indicate if this field is required
    @IBInspectable
    var isRequired: Bool = false {
        didSet {
            // Reset border color when isRequired changes
            if !isRequired {
                textField.setOutlineColor(outlineColorNormal, for: .normal)
            }
        }
    }

    // Expose UITextField properties
    var text: String? {
        get {
            return textField.text
        }
        set {
            textField.text = newValue
        }
    }

    var isSecureTextEntry: Bool {
        get {
            return textField.isSecureTextEntry
        }
        set {
            textField.isSecureTextEntry = newValue
        }
    }

    var placeholder: String? {
        get {
            return textField.placeholder
        }
        set {
            textField.placeholder = newValue
        }
    }

    var font: UIFont? {
        get {
            return textField.font
        }
        set {
            textField.font = newValue
        }
    }

    var textColor: UIColor? {
        get {
            return textField.textColor
        }
        set {
            textField.textColor = newValue
        }
    }

    var textAlignment: NSTextAlignment {
        get {
            return textField.textAlignment
        }
        set {
            textField.textAlignment = newValue
        }
    }

    var delegate: UITextFieldDelegate? {
        get {
            return textField.delegate
        }
        set {
            textField.delegate = newValue
        }
    }

    var returnKeyType: UIReturnKeyType {
        get {
            return textField.returnKeyType
        }
        set {
            textField.returnKeyType = newValue
        }
    }

    var keyboardType: UIKeyboardType {
        get {
            return textField.keyboardType
        }
        set {
            textField.keyboardType = newValue
        }
    }

    var autocorrectionType: UITextAutocorrectionType {
        get {
            return textField.autocorrectionType
        }
        set {
            textField.autocorrectionType = newValue
        }
    }

    var autocapitalizationType: UITextAutocapitalizationType {
        get {
            return textField.autocapitalizationType
        }
        set {
            textField.autocapitalizationType = newValue
        }
    }

    var isEnabled: Bool {
        get {
            return textField.isEnabled
        }
        set {
            textField.isEnabled = newValue
        }
    }

    var clearButtonMode: UITextField.ViewMode {
        get {
            return textField.clearButtonMode
        }
        set {
            textField.clearButtonMode = newValue
        }
    }

    override func resignFirstResponder() -> Bool {
        return textField.resignFirstResponder()
    }

    override func becomeFirstResponder() -> Bool {
        return textField.becomeFirstResponder()
    }

    // Additional methods
    func addTarget(_ target: Any?, action: Selector, for controlEvents: UIControl.Event) {
        textField.addTarget(target, action: action, for: controlEvents)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupTextField()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupTextField()
    }
    
    private func setupTextField() {
        // Add the text field to the custom view
        addSubview(textField)
        
        // Set translatesAutoresizingMaskIntoConstraints to false for Auto Layout
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        // Constraints for the text field
        NSLayoutConstraint.activate([
            textField.leadingAnchor.constraint(equalTo: leadingAnchor),
            textField.trailingAnchor.constraint(equalTo: trailingAnchor),
            textField.topAnchor.constraint(equalTo: topAnchor),
            textField.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        
        // Add target for editing did end
        textField.addTarget(self, action: #selector(textFieldDidEndEditing), for: .editingDidEnd)
    }

    @objc private func textFieldDidEndEditing() {
        // Check if the field is required and empty
        if isRequired && (textField.text?.isEmpty ?? true) {
            // Set border color to red
            textField.setOutlineColor(outlineColorRequired, for: .normal)
        } else {
            // Reset to normal outline color
            textField.setOutlineColor(outlineColorNormal, for: .normal)
        }
    }
}
