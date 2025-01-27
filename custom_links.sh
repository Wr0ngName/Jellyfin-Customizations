#/bin/bash

# left menu
sed -E -i 's@^  "menuLinks": \[\],@  "menuLinks": \[\n    {\n        "name": "Requests",\n        "icon": "follow_the_signs",\n        "url": "https://link.to.jellyseerr/for-example"\n    }\n  \],@g' /usr/share/jellyfin/web/config.json

# login page
sed -E -i 's@forgotpassword.html@https://link.to.sso/for-example@g' $(grep -rl '("forgotpassword.html")' /usr/share/jellyfin/web 2>/dev/null)

echo "Customizations applied!"
