RESOURCES=resources

IMAGE?=andreacensi/mcdp_books:daffy-devel

clean:
	rm -rf out duckuments-dist

update-resources:
	echo
	# git submodule sync --recursive
	# git submodule update --init --recursive

THIS_DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

compile-native: update-resources
	$(THIS_DIR)/../scripts/run-book-native.sh "$(BOOKNAME)" "$(SRC)"  "no"
compile-native-golden: update-resources
	$(THIS_DIR)/../scripts/run-book-native.sh "$(BOOKNAME)" "$(SRC)"  "yes"

gitdir_super:=$(shell git rev-parse --show-superproject-working-tree)
gitdir:=$(shell git rev-parse --show-toplevel)
pwd1:=$(shell realpath $(PWD))
uid1:=$(shell id -u)
cols:=$(shell tput cols)

compile-docker: update-resources
	# docker pull $(IMAGE)
	echo gitdir = $(gitdir)
	echo gitdir_super = $(gitdir_super)
	mkdir -p /tmp/fake-$(USER)-home
	docker run \
		-v "$(gitdir):$(gitdir)" \
		-v "$(gitdir_super):$(gitdir_super)" \
		-v "$(pwd1):$(pwd1)" \
		-v /tmp/fake-$(USER)-home:/home/$(USER) \
		-e USER=$(USER) \
		-e USERID=$(uid1) \
		--user $(uid1) \
		-e COLUMNS=$(cols)\
		-ti \
		"$(IMAGE)" \
		/project/run-book-native.sh \
		"$(BOOKNAME)" "$(SRC)" "$(RESOURCES)" \
		"$(pwd1)"


submodule-update:
	git submodule sync --recursive
	git submodule update --init --recursive

# only for CI
compile-native-ci:
	/project/run-book-native.sh "$(BOOKNAME)" "$(SRC)" "$(RESOURCES)" "$(pwd1)"


package-artifacts:
	bash ./resources/scripts/package-artifacts.sh out/package.tgz


linkcheck:
	linkchecker --version
	chmod -R go+rwX duckuments-dist
	# --allow-root  not in current version
	linkchecker --check-extern $(shell zsh -c "ls -1 duckuments-dist/**/out/*.html") | tee duckuments-dist/linkchecker.txt
