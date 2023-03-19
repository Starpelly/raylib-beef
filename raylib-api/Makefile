RAYLIB_VERSION?=4.5.0
PARSER?=vendor/raylib-parser/parser/raylib_parser
RAYLIB?=vendor/raylib
EXTENSION?=txt
FORMAT?=DEFAULT

all:
	FORMAT=DEFAULT EXTENSION=txt $(MAKE) parse
	FORMAT=JSON EXTENSION=json $(MAKE) parse
	FORMAT=XML EXTENSION=xml $(MAKE) parse
	FORMAT=LUA EXTENSION=lua $(MAKE) parse

vendor/raylib-parser:
	git clone https://github.com/raysan5/raylib.git --depth 2 vendor/raylib-parser

vendor/raylib:
	git clone https://github.com/raysan5/raylib.git --depth 1 --branch $(RAYLIB_VERSION) vendor/raylib

vendor/reasings:
	git clone https://github.com/raylib-extras/reasings.git --depth 1 vendor/reasings

vendor/rmem:
	git clone https://github.com/raylib-extras/rmem.git --depth 1 vendor/rmem

vendor/raygui:
	git clone https://github.com/raysan5/raygui.git --depth 1 vendor/raygui

vendor/rres:
	git clone https://github.com/raysan5/rres.git --depth 1 vendor/rres

vendor: vendor/raylib-parser vendor/raylib vendor/reasings vendor/rmem vendor/raygui vendor/rres

$(PARSER): vendor
	$(MAKE) -C vendor/raylib-parser/parser

parse: $(PARSER)
	$(PARSER) -i $(RAYLIB)/src/raylib.h -o raylib.$(EXTENSION) -f $(FORMAT) -d RLAPI
	$(PARSER) -i $(RAYLIB)/src/raymath.h -o raymath.$(EXTENSION) -f $(FORMAT) -d RMAPI
	$(PARSER) -i $(RAYLIB)/src/rlgl.h -o rlgl.$(EXTENSION) -f $(FORMAT) -d RLAPI -t "RLGL IMPLEMENTATION"
	$(PARSER) -i vendor/reasings/src/reasings.h -o reasings.$(EXTENSION) -f $(FORMAT) -d EASEDEF
	$(PARSER) -i vendor/raygui/src/raygui.h -o raygui.$(EXTENSION) -f $(FORMAT) -d RAYGUIAPI -t "RAYGUI IMPLEMENTATION"
	$(PARSER) -i vendor/rmem/src/rmem.h -o rmem.$(EXTENSION) -f $(FORMAT) -d RMEMAPI -t "RMEM IMPLEMENTATION"
	$(PARSER) -i vendor/rres/src/rres.h -o rres.$(EXTENSION) -f $(FORMAT) -d RRESAPI -t "RRES IMPLEMENTATION"

clean:
	rm -rf vendor
