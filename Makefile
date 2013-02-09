.PHONY: build, run
default: build


build:
	javac -Xlint:none -cp .:pdfbox:megamap -d . ir/*.java

run: build
	java -Xmx1024m -cp .:pdfbox:megamap ir.SearchGUI -d 1000 -m