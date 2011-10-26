(function() {
  var StylishFileInput;
  StylishFileInput = (function() {
    var _buildUI, _hideInput;
    function StylishFileInput(htmlFileInputElement, text) {
      if (text == null) {
        text = "Choose File";
      }
      this._input = htmlFileInputElement;
      this._text = text;
      this._label = null;
      _buildUI.call(this);
    }
    _buildUI = function() {
      var inputSibling, label, parentNode, textSpan;
      parentNode = this._input.parentNode;
      label = document.createElement("label");
      label.className = "stylish-file-input";
      inputSibling = this._input.nextSibling;
      parentNode.insertBefore(label, inputSibling);
      label.appendChild(this._input);
      textSpan = document.createElement("span");
      textSpan.className = "text";
      textSpan.innerHTML = this._text;
      label.insertBefore(textSpan, this._input);
      this._label = label;
      return _hideInput.call(this);
    };
    _hideInput = function() {
      var input, label;
      label = this._label;
      label.style.position = "relative";
      label.style.display = "inline-block";
      label.style.overflow = "hidden";
      input = this._input;
      input.style.position = "absolute";
      input.style.right = "0px";
      input.style.top = "0px";
      input.style.cursor = "pointer";
      input.style.fontSize = "500px";
      input.style.opacity = 0;
      return input.style.filter = 'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)';
    };
    return StylishFileInput;
  })();
  window.StylishFileInput = StylishFileInput;
}).call(this);
