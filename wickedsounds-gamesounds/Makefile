
.PHONY: all check-env

all: check-env
	[ -d content ] || mkdir content
	zip -r content/wickedsounds-gamesounds.pk3 sound/
	sed -i 's/__content__/$(subst /,\/,$(abspath content))/g' workshop_item.vdf
	sed -i 's/__preview__/$(subst /,\/,$(abspath preview/preview.png))/g' workshop_item.vdf
	steamcmd +login ${STEAMLOGIN} ${STEAMPASSWORD} +workshop_build_item $(abspath workshop_item.vdf) +quit

check-env:
ifndef STEAMLOGIN
	$(error STEAMLOGIN is undefined)
endif
ifndef STEAMPASSWORD
	$(error STEAMPASSWORD is undefined)
endif


