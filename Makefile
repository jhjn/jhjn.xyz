shell=/bin/sh
SRC_DIR = ./site
DST_DIR = /var/www/main
# Form the end result images
IMAGES = $(addprefix $(DST_DIR)/images/, $(shell ls $(SRC_DIR)/images))
# Form the end result html filename
INDEX = $(DST_DIR)/main.html

.PHONY = all clean
all: clean $(INDEX) $(IMAGES)

$(INDEX):
	pp $(SRC_DIR)/$(MAIN) > $@

$(DST_DIR)/images/%: $(SRC_DIR)/images/% 
	cp -f $< $@

clean:
	rm $(INDEX) $(IMAGES)
