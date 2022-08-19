all: draft-hoffman-rfc6761bis.txt

.PRECIOUS: %.xml

%.txt: %.xml
	xml2rfc $<

%.xml: %.mkd
	kramdown-rfc $< >$@.new
	mv $@.new $@
