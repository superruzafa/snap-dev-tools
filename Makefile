NODE := node
NPM := npm
JSDOC := dev/node_modules/.bin/jsdoc
JSDOCFLAGS := --verbose

TARGETS := \
	morphic.js \
	blocks.js \
	byob.js \
	cloud.js \
	gui.js \
	lists.js \
	locale.js \
	objects.js \
	paint.js \
	store.js \
	symbols.js \
	tables.js \
	threads.js \
	widgets.js \
	xml.js \

MORPHIC_FILES := \
	morphic_header.js \
	morphic_global_settings.js \
	morphic_global_functions.js \
	Animation.js \
	Color.js \
	Point.js \
	Rectangle.js \
	Node.js \
	Morph.js \
	ShadowMorph.js \
	HandleMorph.js \
	PenMorph.js \
	ColorPaletteMorph.js \
	GrayPaletteMorph.js \
	ColorPickerMorph.js \
	BlinkerMorph.js \
	CursorMorph.js \
	BoxMorph.js \
	SpeechBubbleMorph.js \
	DialMorph.js \
	CircleBoxMorph.js \
	SliderButtonMorph.js \
	SliderMorph.js \
	MouseSensorMorph.js \
	InspectorMorph.js \
	MenuMorph.js \
	StringMorph.js \
	TextMorph.js \
	TriggerMorph.js \
	MenuItemMorph.js \
	FrameMorph.js \
	ScrollFrameMorph.js \
	ListMorph.js \
	StringFieldMorph.js \
	BouncerMorph.js \
	HandMorph.js \
	WorldMorph.js

BLOCKS_FILES := \
	blocks_header.js \
	SyntaxElementMorph.js \
	BlockMorph.js \
	CommandBlockMorph.js \
	HatBlockMorph.js \
	ReporterBlockMorph.js \
	RingMorph.js \
	ScriptsMorph.js \
	ArgMorph.js \
	CommandSlotMorph.js \
	RingCommandSlotMorph.js \
	CSlotMorph.js \
	InputSlotMorph.js \
	TemplateSlotMorph.js \
	BooleanSlotMorph.js \
	ArrowMorph.js \
	TextSlotMorph.js \
	ColorSlotMorph.js \
	BlockHighlightMorph.js \
	MultiArgMorph.js \
	ArgLabelMorph.js \
	FunctionSlotMorph.js \
	ReporterSlotMorph.js \
	RingReporterSlotMorph.js \
	CommentMorph.js \
	ScriptFocusMorph.js

BYOB_FILES := \
	byob_header.js \
	CustomBlockDefinition.js \
	CustomCommandBlockMorph.js \
	CustomReporterBlockMorph.js \
	JaggedBlockMorph.js \
	BlockDialogMorph.js \
	BlockEditorMorph.js \
	PrototypeHatBlockMorph.js \
	BlockLabelFragment.js \
	BlockLabelFragmentMorph.js \
	BlockLabelPlaceHolderMorph.js \
	BlockInputFragmentMorph.js \
	InputSlotDialogMorph.js \
	VariableDialogMorph.js \
	BlockExportDialogMorph.js \
	BlockImportDialogMorph.js \
	BlockRemovalDialogMorph.js

CLOUD_FILES := \
	cloud_header.js \
	Cloud.js

GUI_FILES := \
	gui_header.js \
	IDE_Morph.js \
	ProjectDialogMorph.js \
	LibraryImportDialogMorph.js \
	SpriteIconMorph.js \
	CostumeIconMorph.js \
	TurtleIconMorph.js \
	WardrobeMorph.js \
	SoundIconMorph.js \
	JukeboxMorph.js \
	StageHandleMorph.js \
	PaletteHandleMorph.js \
	CamSnapshotDialogMorph.js \
	SoundRecorderDialogMorph.js

LISTS_FILES := \
	lists_header.js \
	Lists.js

LOCALE_FILES := \
	locale_header.js \
	Localizer.js

OBJECTS_FILES := \
	objects_header.js \
	SpriteMorph.js \
	SpriteHighlightMorph.js \
	StageMorph.js \
	SpriteBubbleMorph.js \
	Costume.js \
	SVG_Costume.js \
	CostumeEditorMorph.js \
	Sound.js \
	Note.js \
	CellMorph.js \
	WatcherMorph.js \
	StagePrompterMorph.js

PAINT_FILES := \
	paint_header.js \
	PaintEditorMorph.js \
	AdvancedColorPickerMorph.js \
	PaintCanvasMorph.js

STORE_FILES := \
	store_header.js \
	XML_Serializer.js \
	SnapSerializer.js \

SYMBOLS_FILES := \
	symbols_header.js \
	SymbolMorph.js

TABLES_FILES := \
	tables_header.js \
	Table.js \
	TableCellMorph.js \
	TableMorph.js \
	TableFrameMorph.js

THREADS_FILES := \
	threads_header.js \
	ThreadManager.js \
	Process.js \
	Context.js \
	Variable.js \
	VariableFrame.js \

WIDGETS_FILES := \
	widgets_header.js \
	PushButtonMorph.js \
	ToggleButtonMorph.js \
	TabMorph.js \
	ToggleMorph.js \
	ToggleElementMorph.js \
	DialogBoxMorph.js \
	AlignmentMorph.js \
	InputFieldMorph.js \
	PianoMenuMorph.js \
	PianoKeyMorph.js \

XML_FILES := \
	xml_header.js \
	ReadStream.js \
	XML_Element.js \

MORPHIC_SRC := $(addprefix dev/src/morphic/,$(MORPHIC_FILES))
BLOCKS_SRC := $(addprefix dev/src/blocks/,$(BLOCKS_FILES))
BYOB_SRC := $(addprefix dev/src/byob/,$(BYOB_FILES))
CLOUD_SRC := $(addprefix dev/src/cloud/,$(CLOUD_FILES))
GUI_SRC := $(addprefix dev/src/gui/,$(GUI_FILES))
LISTS_SRC := $(addprefix dev/src/lists/,$(LISTS_FILES))
LOCALE_SRC := $(addprefix dev/src/locale/,$(LOCALE_FILES))
OBJECTS_SRC := $(addprefix dev/src/objects/,$(OBJECTS_FILES))
PAINT_SRC := $(addprefix dev/src/paint/,$(PAINT_FILES))
STORE_SRC := $(addprefix dev/src/store/,$(STORE_FILES))
SYMBOLS_SRC := $(addprefix dev/src/symbols/,$(SYMBOLS_FILES))
TABLES_SRC := $(addprefix dev/src/tables/,$(TABLES_FILES))
THREADS_SRC := $(addprefix dev/src/threads/,$(THREADS_FILES))
WIDGETS_SRC := $(addprefix dev/src/widgets/,$(WIDGETS_FILES))
XML_SRC := $(addprefix dev/src/xml/,$(XML_FILES))

all: build

morphic.js: $(MORPHIC_SRC)
blocks.js: $(BLOCKS_SRC)
byob.js: $(BYOB_SRC)
cloud.js: $(CLOUD_SRC)
gui.js: $(GUI_SRC)
locale.js: $(LOCALE_SRC)
objects.js: $(OBJECTS_SRC)
paint.js: $(PAINT_SRC)
store.js: $(STORE_SRC)
symbols.js: $(SYMBOLS_SRC)
tables.js: $(TABLES_SRC)
threads.js: $(THREADS_SRC)
widgets.js: $(WIDGETS_SRC)
xml.js: $(XML_SRC)

build: $(TARGETS)

$(TARGETS):
	cat $^ > $@

install:
	cd dev && $(NPM) install

extract:
	$(NODE) dev/extract.js

docs:
	$(JSDOC) $(JSDOCFLAGS) --readme dev/morphic.md --configure dev/jsdoc.json

uninstall: clean
	rm -rf dev
	rm Makefile

clean:
	rm -rf docs
	rm -rf dev/src
	rm -rf dev/node_modules

.PHONY: install build extract docs uninstall clean
