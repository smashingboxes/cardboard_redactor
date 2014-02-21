# Cardboard Redactor
Add redactor to your cardboard project
*Note:* You need to purchase your own license from redactor at http://imperavi.com/redactor/download/

## Intallation Instructions
Add to your gemfile
```
gem 'cardboard_cms', github: 'smashingboxes/cardboard'
gem 'cardboard_redactor', github: 'smashingboxes/cardboard_redactor'

``` 

### Assets
Then to your `cardboard.js`

```javascript
//= require cardboard/redactor
//= require cardboard/redactor/highlight

window.init_redactor = function(){
  var csrf_token = $('meta[name=csrf-token]').attr('content');
  var csrf_param = $('meta[name=csrf-param]').attr('content');
  var params;
  if (csrf_param !== undefined && csrf_token !== undefined) {
    params = csrf_param + "=" + encodeURIComponent(csrf_token);
  }
    $('.redactor').redactor({
      plugins: ['fullscreen'],
      imageUpload: "/cardboard/redactor/image?" + params
      // Uncomment as need be (these routes are created for you)
      // imageGetJson: '/cardboard/redactor/images'
      // fileUpload: '/cardboard/redactor/file?' + params
    });
}

$(document).ready( window.init_redactor );
$(window).bind('page:change', window.init_redactor);

```

### Migrations
```
rake cardboard_redactor:install:migrations
rake db:migrate
```

copyright of SmashingBoxes.