KANSO_PATH= ./kanso

JS_FILE= backbone-d3.js
VISUALISATIONS_DIR= visualisations
VERSION= $(shell grep VERSION $(JS_FILE) | cut -d \" -f 2)

kanso:
	mkdir -p $(KANSO_PATH)
	cp $(JS_FILE) $(KANSO_PATH)
	cp -r $(VISUALISATIONS_DIR) $(KANSO_PATH)
	cp README.md $(KANSO_PATH)
	sed -e 's/VERSION/\"$(VERSION)\"/' kanso.json.in > $(KANSO_PATH)/kanso.json