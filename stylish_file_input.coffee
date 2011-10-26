class StylishFileInput

    constructor: (htmlFileInputElement, text = "Choose File") ->
        @_input = htmlFileInputElement
        @_text = text

        @_label = null
        
        _buildUI.call this

    _buildUI = ->        
        parentNode = @_input.parentNode
        label = document.createElement "label"
        label.className = "stylish-file-input"
        inputSibling = @_input.nextSibling
        parentNode.insertBefore label, inputSibling
        label.appendChild @_input
        textSpan = document.createElement "span"
        textSpan.className = "text"
        textSpan.innerHTML = @_text
        label.insertBefore textSpan, @_input

        @_label = label

        _hideInput.call this
        
    _hideInput = ->
        label = @_label
        label.style.position = "relative"
        label.style.display = "inline-block"
        label.style.overflow = "hidden"

        input = @_input
        input.style.position = "absolute"
        input.style.right = "0px"
        input.style.top = "0px"
        input.style.cursor = "pointer"
        input.style.fontSize = "500px"
        input.style.opacity = 0
        # IE hacks
        input.style.filter = 'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'

window.StylishFileInput = StylishFileInput
  