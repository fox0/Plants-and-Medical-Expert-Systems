update-po:
	pygettext -o locales/ru/LC_MESSAGES/messages.pot 'Plants and medical Expert Systems.py';\
	msgmerge locales/ru/LC_MESSAGES/messages.po locales/ru/LC_MESSAGES/messages.pot > locales/ru/LC_MESSAGES/tmp.po;\
	mv locales/ru/LC_MESSAGES/tmp.po locales/ru/LC_MESSAGES/messages.po;\
	rm -f locales/ru/LC_MESSAGES/messages.pot locales/ru/LC_MESSAGES/tmp.po

update-mo:
	msgfmt -o locales/ru/LC_MESSAGES/messages.mo locales/ru/LC_MESSAGES/messages.po
