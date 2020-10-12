.PHONY: clean puml_clean puml_img

# 1. Plant UML Settings
## directories
PUMLSRC     := .
## flags
PUMLFLAGS   :=

puml_img:
	@find $(PUMLSRC) \( -name *.puml -or -name *.pu \) | while read line; \
    do \
		echo puml_img: $$line; \
	 	dir=$${line%.*}; \
		dir=$$(basename "$$dir"); \
		plantuml -o "./$$dir" $$PUMLFLAGS "$$line"; \
	done

puml_clean:
	@find $(PUMLSRC) \( -name *.puml -or -name *.pu \) | while read line; \
    do \
	 	dir=$${line%.*}; \
		$(RM) -rf "$$dir"; \
	done

clean: puml_clean
