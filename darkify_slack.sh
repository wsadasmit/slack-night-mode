#! /bin/bash

#
# We can change the url below to point to another css file.
# this script sourced from https://gist.github.com/maxgfr/45c7def0162636bc11cde8cec76e9d0e (thanks max)
#


# Don't want to interpret variables whilst reading from the HEREDOC - thus the single quotes... potto
cat << 'EOF' >> /Applications/Slack.app/Contents/Resources/app.asar.unpacked/src/static/ssb-interop.js
document.addEventListener('DOMContentLoaded', function() {
 $.ajax({
   url: 'https://cdn.rawgit.com/laCour/slack-night-mode/master/css/raw/black.css',
   success: function(css) {
     $("<style></style>").appendTo('head').html(css);
   }
 });
});
EOF
echo If Slack.app is already running, refresh with CMD-R
