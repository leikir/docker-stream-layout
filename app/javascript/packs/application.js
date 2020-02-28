import Rails from '@rails/ujs'
Rails.start()

// require("@rails/activestorage").start()
// require("channels")

require("jquery")

import './bootstrap_custom.js'

// FORM
const handleForm = function() {
  const form = $('form#match-layout-form')[0];

  if(form) {
    $(form).find('input').change(function() {
      Rails.fire(form, 'submit');
    });
  }
};

// SHOW
const handleShow = function() {
  const matchLayout = $('#match-layout')[0];

  if(matchLayout) {
    const contentURL = $(matchLayout).attr('data-content-url');

    var useContent = function(html) {
      $(matchLayout).html(html);
    };

    var reloadContent = function(callback) {
      $.get(contentURL, function(html) {
        useContent(html);
        callback.apply(window);
      });
    };

    var loopReloadContent = function() {
      reloadContent(function() {
        window.setTimeout(loopReloadContent, 2000);
      });
    };

    loopReloadContent();
  }
};

// GO
$(function() {
  handleForm();
  handleShow();
});
