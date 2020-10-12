#!/bin/bash -e
#
# Wrapper for pandoc.

# Convert the markdown page to HTML and insert it
# into the template. Also bring in the CSS and minify
# the HTML.
# Location of site folder
SITE=/root/www/jhjn.xyz/site
MAIN_DIR=/var/www/main

mk() {
    pandoc --to=html5 \
           "$@" \
		   --toc --standalone \
           --strip-comments \
           --no-highlight \
           --template=$SITE/templates/default.html \
           --include-in-header $SITE/templates/default.css \
           "$SITE/$page" |
           sed ':a;N;$!ba;s|>\s*<|><|g' > "${page%%.md}.html"

    printf '%s\n' "CC $page"
}

# Delete the old website locations.
shopt -s extglob
cd $MAIN_DIR
rm -rf *
shopt -u extglob

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
