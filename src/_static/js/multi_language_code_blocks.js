var known_languages = [
  {id: "julia", name: "Julia"},
  {id: "python", name: "Python"},
  {id: "c", name: "C"},
  {id: "fortran", name: "Fortran"},
  {id: "javascript", name: "JavaScript"}
];

function setLanguage(language) {
  $(".highlight").each(function() {
    var highlighted_codeblock = $(this.parentNode);
    $.each(known_languages, function() {
      var known_language = this;
      if (highlighted_codeblock.hasClass("highlight-"+this.id)) {
        if (this == language) {
          highlighted_codeblock.show();
        } else {
          highlighted_codeblock.hide();
        }
      }
    });
  });

  $(".language-picker-item").each(function() {
    var language_picker_item = $(this);
    if (language_picker_item.hasClass("language-picker-item-"+language.id)) {
      language_picker_item.addClass("language-picker-item-active");
    } else {
      language_picker_item.removeClass("language-picker-item-active");
    }
  });
}

function addLanguagePickers() {
  // Remove languages which aren't used in this page
  for (var i = known_languages.length-1; i >= 0; i--) {
    if ($(".highlight").filter(function() { return $(this.parentNode).hasClass("highlight-"+known_languages[i].id); }).length == 0) {
      known_languages.splice(i, 1);
    }
  }

  // Don't insert language pickers in pages with only one known language
  if (known_languages.length < 2) {
    return;
  }

  var highlighted_codeblocks = $(".highlight").filter(function() {
    for (var i = 0; i < known_languages.length; i++) {
      if ($(this.parentNode).hasClass("highlight-"+known_languages[i].id)) {
        return true;
      }
    }
    return false;
  });
  var highlighted_codeblocks_versions = [];
  for (var i = 0; i < highlighted_codeblocks.length; i++) {
    var highlighted_codeblock = $(highlighted_codeblocks[i].parentNode);

    if (!highlighted_codeblock.prev() || highlighted_codeblock.prev().find(".highlight").length == 0) {
      // Reset list of different language versions of the same code
      var highlighted_codeblocks_versions = [];
    }
    highlighted_codeblocks_versions.push(highlighted_codeblock);
    if (!highlighted_codeblock.next() || highlighted_codeblock.next().find(".highlight").length == 0) {
      var language_picker = document.createElement("ul");
      language_picker.className = "language-picker";
      for (var j = 0; j < known_languages.length; j++) {
        var language = known_languages[j];
        var has_version_in_language = false;
        for (var k = 0; k < highlighted_codeblocks_versions.length; k++) {
          if (jQuery(highlighted_codeblocks_versions[k]).hasClass("highlight-"+language.id)) {
            has_version_in_language = true;
          }
        }
        var language_picker_item = document.createElement("li");
        var label = document.createTextNode(language.name);
        language_picker_item.appendChild(label);
        language_picker_item.className = "language-picker-item language-picker-item-"+language.id;
        if (has_version_in_language) {
          language_picker_item.addEventListener("click", function() {
            // Calculate height difference of previous code blocks and scroll accordingly, keeping the current code block fixed
            var currently_visible_elements = $(this.language_picker).prevAll('div[class^="highlight-"]').filter(function() {
              return $(this).is(":visible");
            });
            var current_visible_height = 0;
            for (var k = 1; k < currently_visible_elements.length; k++) {
              current_visible_height += $(currently_visible_elements[k]).height();
            }

            setLanguage(this.language);

            var afterwards_visible_elements = $(this.language_picker).prevAll('div[class^="highlight-"]').filter(function() {
              return $(this).is(":visible");
            });
            var afterwards_visible_height = 0;
            for (var k = 1; k < afterwards_visible_elements.length; k++) {
              afterwards_visible_height += $(afterwards_visible_elements[k]).height();
            }
            $(document).scrollTop($(document).scrollTop()+afterwards_visible_height-current_visible_height);
          }.bind({language: language, language_picker: language_picker}));
        } else {
          language_picker_item.className += " language-picker-item-disabled";
          $(placeholder).before("<div class='highlight-placeholder highlight-"+language.id+"'><div class='highlight'></div></div>");
        }
        language_picker.appendChild(language_picker_item);
      }
      $(language_picker).insertAfter(highlighted_codeblock);
    }
  }
}

$(function () {
  addLanguagePickers();
  if (known_languages.length > 0) {
    setLanguage(known_languages[0]);
  }
});
