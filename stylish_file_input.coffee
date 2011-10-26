class StylishFileInput

    constructor: (htmlFileInputElement, text = "Choose File") ->
        @_input = htmlFileInputElement
        @_text = text
        
        _buildUI.call this

    _buildUI = ->
        console.log "build UI"
        parentNode = @_input.parentNode
        label = document.createElement "label"
        inputSibling = @_input.nextSibling
        parentNode.insertBefore label, inputSibling
        label.appendChild @_input
        textSpan = document.createElement "span"
        textSpan.innerHTML = @_text
        label.appendChild textSpan

window.StylishFileInput = StylishFileInput
  