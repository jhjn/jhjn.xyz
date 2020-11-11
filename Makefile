shell=/bin/sh
SRC_DIR = ./site
DST_DIR = /var/www/main
# Find all markdown files
MARKDOWN = $(shell find $(SRC_DIR) -iname "*.md" -printf '%P\n')
# Form the end result images
IMAGES = $(addprefix $(DST_DIR)/images/, $(shell ls $(SRC_DIR)/images))
# Form the end result html filename
HTML = $(addprefix $(DST_DIR)/,$(MARKDOWN:.md=.html))

.PHONY = all clean
all: clean $(HTML) $(IMAGES)

$(DST_DIR)/%.html: $(SRC_DIR)/%.md
	pandoc \
	--to=html5 \
   	--toc \
	--standalone \
   	--strip-comments \
   	--no-highlight \
   	--template=$(SRC_DIR)/templates/default.html \
   	--include-in-header $(SRC_DIR)/templates/default.css \
   	$< \
	--output=$@

$(DST_DIR)/images/%: $(SRC_DIR)/images/% 
	cp -f $< $@

clean:
	rm $(HTML) $(IMAGES)
