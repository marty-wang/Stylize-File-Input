(function() {
  var exports;
  exports = window;
  (function(exports) {
    var stylizeFileInput, _hideInput;
    stylizeFileInput = function(htmlFileInputElement, text) {
      var inputSibling, label, parentNode, textSpan;
      if (text == null) {
        text = "Choose File";
      }
      parentNode = htmlFileInputElement.parentNode;
      label = document.createElement("label");
      label.className = "stylish-file-input";
      inputSibling = htmlFileInputElement.nextSibling;
      parentNode.insertBefore(label, inputSibling);
      label.appendChild(htmlFileInputElement);
      textSpan = document.createElement("span");
      textSpan.className = "text";
      textSpan.innerHTML = text;
      label.insertBefore(textSpan, htmlFileInputElement);
      return _hideInput(label, htmlFileInputElement);
    };
    _hideInput = function(label, input) {
      var inputStyle, labelStyle;
      labelStyle = label.style;
      labelStyle.position = "relative";
      labelStyle.display = "inline-block";
      labelStyle.overflow = "hidden";
      inputStyle = input.style;
      inputStyle.position = "absolute";
      inputStyle.right = "0px";
      inputStyle.top = "0px";
      inputStyle.cursor = "pointer";
      inputStyle.fontSize = "500px";
      inputStyle.opacity = 0;
      return inputStyle.filter = 'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)';
    };
    return exports.stylizeFileInput = stylizeFileInput;
  })(exports);
}).call(this);
