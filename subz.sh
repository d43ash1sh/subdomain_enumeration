#!/bin/bash

echo ""
echo ".  ..__..__ .___  .__ .   ,  .__ .___.__ .__. __..  .._. __..  ."
echo "|\/|[__]|  \[__   [__) \./   |  \[__ [__)[__](__ |__| | (__ |__|"
echo "|  ||  ||__/[___  [__)  |    |__/[___[__)|  |.__)|  |_|_.__)|  |"
echo -e "\033[0;31mFind more of my work at https://github.com/d43ash1sh\033[0m"
echo "                                                                   "
echo "Enter the website domain (e.g. debashish.com):"
read domain

echo "Collecting Subdomains for $domain..."

curl -s "https://crt.sh/?q=%25.$domain&output=json" | jq -r '.[].name_value' | sed 's/\*\.//g' | sort -u

echo ""
echo "⚡️ জ য় আ ই অ স ম ⚡️"
