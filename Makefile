
default: help
.PHONY: default

help:
	@echo 'Usage:'
	@echo '	$$ make [action]'
	@echo
	@echo 'Ex:'
	@echo '	$$ make'
	@echo '	$$ make help'
	@echo
	@echo '	$$ make build'
	@echo
.PHONY: help




build:
	@./build.sh
.PHONY: build




clean:
	sudo rm -rf /opt/tmp/lika
.PHONY: clean




test:
#	sudo REF_MAIN_RUN=test ./steps.sh amd64
	sudo IS_DEBUG=true REF_MAIN_RUN=test ./steps.sh amd64
.PHONY: test
