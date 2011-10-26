(function() {
  var StylishFileInput;
  StylishFileInput = (function() {
    var _buildUI;
    function StylishFileInput(htmlFileInputElement, text) {
      if (text == null) {
        text = "Choose File";
      }
      this._input = htmlFileInputElement;
      this._text = text;
      _buildUI.call(this);
    }
    _buildUI = function() {
      var inputSibling, label, parentNode, textSpan;
      console.log("build UI");
      parentNode = this._input.parentNode;
      label = document.createElement("label");
      inputSibling = this._input.nextSibling;
      parentNode.insertBefore(label, inputSibling);
      label.appendChild(this._input);
      textSpan = document.createElement("span");
      textSpan.innerHTML = this._text;
      return label.appendChild(textSpan);
    };
    return StylishFileInput;
  })();
  window.StylishFileInput = StylishFileInput;
}).call(this);
