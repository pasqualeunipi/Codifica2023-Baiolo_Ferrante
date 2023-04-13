Aprile 2023 - Progetto di Codifica di testi realizzato da Chiara Baiolo e Pasquale Ferrante

Il progetto ha previsto la trascrizione e codifica di cinque pagine del diario di Emanuele Artom
estratte dal seguente link http://digital-library.cdec.it/cdec-web/storico/detail/IT-CDEC-ST0003-000006/diari.html 

Il file .xml (progetto.xml) è stato validato utilizzando Xerces
java -cp "_tools/xerces/xml-apis.jar;_tools/xerces/xercesImpl.jar;_tools/xerces/xercesSamples.jar" dom.Counter -v src/progetto.xml

Il file .html (progetto.html) è stato generato dal file .xsl (style.xsl) tramite Saxon
java -jar _tools/saxon/saxon-he-11.4.jar -s:src/progetto.xml -xsl:src/style.xsl -o:src/progetto.html