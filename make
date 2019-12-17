#!/bin/sh -e
#
# Simple static site builder, without wiki.

# Convert the markdown page to HTML and insert it
# into the template. Also bring in the CSS and minify
# the HTML.
# Location of site folder
SITE=/var/www/jhjn/site
HTML_WWW=/var/www/html

mk() {
    pandoc -t html5 \
           "$@" \
	   --toc -s \
           --strip-comments \
           --no-highlight \
           --template=$SITE/templates/default.html \
           -H $SITE/templates/default.css.min \
           "$SITE/$page" |
           sed ':a;N;$!ba;s|>\s*<|><|g' > "${page%%.md}.html"

    printf '%s\n' "CC $page"
}

# Delete the generated website.
rm    -rf $HTML_WWW
mkdir -p  $HTML_WWW
cd        $HTML_WWW

# Minify the CSS using sed.
sed ':a;N;$!ba;s/\n//g;s/: /:/g;s/ {  /{/g;s/;  /;/g;s/;}/}/g' \
    $SITE/templates/default.css > $SITE/templates/default.css.min

# Iterate over and send each file in the source tree under /site/ to while loop. Not including hidden file.
(cd $SITE; find . -type f -a -not -path '*/\.*') |

while read -r page; do
    mkdir -p "${page%/*}"
    file=${page##*/}

    case $page in

		# Convert markdown to html and minify
        *.md) mk
		;;

        # Copy over any images or non-markdown files.
        *)
            cp "$SITE/$page" "$page"

            printf '%s\n' "CP $page"
        ;;
    esac
done

printf 'Build complete.\n'
