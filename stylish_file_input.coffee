class StylishFileInput

    constructor: (htmlFileInputElement, text = "Choose File") ->
        @_input = htmlFileInputElement
        @_text = text

        @_label = null
        
        _buildUI.call this
        # _registerEventHandlers.call this

    _buildUI = ->
        console.log "build UI"
        
        parentNode = @_input.parentNode
        label = document.createElement "label"
        label.className = "stylish-file-input"
        inputSibling = @_input.nextSibling
        parentNode.insertBefore label, inputSibling
        label.appendChild @_input
        textSpan = document.createElement "span"
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
        input.style.opacity = 0
        input.style.cursor = "pointer"
        input.style.fontSize = "500px"
    
    _registerEventHandlers = ->
        $label = $(@_label)
        $label.hover ((e)->
            $label.addClass "state-hover"
        ), ((e)->
            $label.removeClass "state-hover"
        )

window.StylishFileInput = StylishFileInput
  