#!/bin/sh -e
#
# Simple static site builder, without wiki.

# Convert the markdown page to HTML and insert it
# into the template. Also bring in the CSS and minify
# the HTML.
mk() {
    pandoc -t html5 \
           "$@" \
		   --toc -s \
           --strip-comments \
           --no-highlight \
           --template=../site/templates/default.html \
           -H ../site/templates/default.css.min \
           "../site/$page" |
           sed ':a;N;$!ba;s|>\s*<|><|g' > "${page%%.md}.html"

    printf '%s\n' "CC $page"
}

# Delete the generated website.
rm    -rf .www
mkdir -p  .www
cd        .www

# Minify the CSS using sed.
sed ':a;N;$!ba;s/\n//g;s/: /:/g;s/ {  /{/g;s/;  /;/g;s/;}/}/g' \
    ../site/templates/default.css > ../site/templates/default.css.min

# Iterate over and send each file in the source tree under /site/ to while loop. Not including hidden file.
(cd ../site; find . -type f -a -not -path '*/\.*') |

while read -r page; do
    mkdir -p "${page%/*}"
    file=${page##*/}

    case $page in

		# Convert markdown to html and minify
        *.md) mk
		;;

        # Copy over any images or non-markdown files.
        *)
            cp "../site/$page" "$page"

            printf '%s\n' "CP $page"
        ;;
    esac
done

printf 'Build complete.\n'
