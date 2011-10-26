# The JavaScript files are technically not necessary. 
# You can hand-craft the HTML. The result will be the same.

do (window) ->
    exports = window

    stylizeFileInput = (htmlFileInputElement, text = "Choose File") ->
        parentNode = htmlFileInputElement.parentNode
        label = document.createElement "label"
        label.className = "stylish-file-input"
        inputSibling = htmlFileInputElement.nextSibling
        parentNode.insertBefore label, inputSibling
        label.appendChild htmlFileInputElement
        textSpan = document.createElement "span"
        textSpan.className = "text"
        textSpan.innerHTML = text
        label.insertBefore textSpan, htmlFileInputElement

        _hideInput label, htmlFileInputElement   
        
    _hideInput = (label, input) ->
        labelStyle = label.style
        labelStyle.position = "relative"
        labelStyle.display = "inline-block"
        labelStyle.overflow = "hidden"

        inputStyle = input.style
        inputStyle.position = "absolute"
        inputStyle.right = "0px"
        inputStyle.top = "0px"
        inputStyle.cursor = "pointer"
        inputStyle.fontSize = "500px"
        inputStyle.opacity = 0
        # for IE
        inputStyle.filter = 'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'

    exports.stylizeFileInput = stylizeFileInput