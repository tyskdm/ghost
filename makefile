.PHONY: clean clean_puml

# 1. Plant UML Settings
## directories
PUMLSRC     :=
PUMLPNG     := 
## extention
PUMLEXT     := puml
## flags
PUMLFLAGS   := -Wall -g -std=c++14

####################

clean_puml:
	@find $(PUMLSRC) -name *.puml -printf "%p\n" | while read line; \
    do \
	 	dir=$${line%.*}; \
		dir=$${dir#./}; \
		$(RM) -rf "$(PUMLPNG)$$dir"; \
	done
