<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.w3.org/1999/xhtml">

    <xsl:output method="html" encoding="UTF-8"/> 
        <xsl:template match="/">

            <html lang="IT">

                <head>
                    <title>Diari di Emanuele Artom</title>
                    <link rel="stylesheet" href="style.css" type="text/css"/>
                    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script;family=Red+Hat+Display;family=Tajawal:wght@300;display=swap" rel="stylesheet"/>
                    <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css" />
                    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
                    <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
                    <script src="progetto.js"></script>
                    <script src="script.js"></script>
                    <script src="bottoni.js"></script>
                </head>

                <body>

                    <header> 
                        <div class="navbar"> <!-- navbar container --> 
                            <a href="#autore">Autore</a>
                            <a href="#descrizione-fisica">Descrizione</a>
                            <div class="dropdown">
                                <button class="dropbtn" onclick="location.href='#gallery';">Diario
                                    <i class="fa fa-caret-down"></i>
                                </button>
                                <div class="dropdown-content">
                                    <a href="#gallery" onclick="currentSlide(1)">Pagina 9</a>
                                    <a href="#gallery" onclick="currentSlide(2)">Pagina 10</a>
                                    <a href="#gallery" onclick="currentSlide(3)">Pagina 11</a>
                                    <a href="#gallery" onclick ="currentSlide(4)">Pagina 12</a>
                                    <a href="#gallery" onclick= "currentSlide(5)">Pagina 13</a>
                                </div>
                            </div>
                            <div class="dropdown">
                                <button class="dropbtn" onclick="location.href='#trascrizione';">Trascrizione
                                    <i class="fa fa-caret-down"></i>
                                </button>
                                <div class="dropdown-content">
                                    <a href="#pagina-9">Pagina 9</a>
                                    <a href="#pagina-10">Pagina 10</a>
                                    <a href="#pagina-11">Pagina 11</a>
                                    <a href="#pagina-12">Pagina 12</a>
                                    <a href="#pagina-13">Pagina 13</a>
                                </div>
                            </div>
                            <a href="#bibliografia">Bibliografia</a>
                            <a href="#footer">Informazioni</a>
                        </div>
                        <div class="title">
                            <h1><em><xsl:value-of select="//tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title[@xml:lang='it']"/></em></h1>
                            <h3><em><xsl:value-of select="//tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title[@type='sub']"/></em></h3> 
                        </div>
                    </header>

                    <main id="main">

                        <section id="autore"> <!-- vita + immagine autore -->
                            <div class="vita">
                                <div class="bio">
                                    <img alt="Emanuele Artom" src="img/foto1.jpg"/>
                                    <p><strong>Emanuele Artom</strong> (Aosta, 23 giugno 1915 – Torino, 7 aprile 1944) </p>
                                </div>
                                <div class="bioEA">
                                    <h2>Vita</h2>
                                    <p>Emanuele Artom nacque nel 1915 in una colta famiglia della borghesia ebraica torinese, figlio di Emilio Artom ed Amalia Segre Artom.<br/>
                                       Studiò al liceo classico Massimo D'Azeglio e nel 1933 si iscrisse alla facoltà di lettere presso l'Università di Milano.<br/>
                                       Tra i collaboratori del grande Dizionario enciclopedico Utet già dal 1935, nel novembre 1937 si laureò in lettere e, in collaborazione con Guido Bonfiglioli, pubblicò il volume "Elena o della Parodia".<br/>
                                       Qualche anno dopo, nel 1941 consegnò alle stampe la prima edizione dei "Principi di storia e cultura ebraica", più volte ristampato.<br/>
                                       Antifascista, nel maggio 1943 Artom si iscrisse al Partito d'Azione. Dopo l'armistizio, con il nome di Eugenio Ansaldi, si arruolò tra i partigiani come delegato azionista in una brigata garibaldina di Barge. In seguito fu nominato commissario politico delle bande "Italia Libera" in Val Pellice e Val Germanasca.<br/>
                                       Catturato dai fascisti nel marzo 1944, Emanuele Artom venne consegnato ai tedeschi e rinchiuso nelle Carceri Nuove di Torino. Morì qui nel 1944 a causa delle torture inflittegli.<br/>
                                    </p>
                                </div>
                            </div>
                        </section>

                        <section id="descrizione-fisica">  <!-- descrizione e info fonte -->
                            <div class="info">
                                <h2>Informazioni sulla fonte</h2>
                                <xsl:apply-templates select="//tei:teiHeader/tei:fileDesc//tei:msContents"/> 
                            </div>
                            <div class="descrizione">
                                <h2>Descrizione fisica</h2>
                                <xsl:apply-templates select="//tei:teiHeader/tei:fileDesc//tei:physDesc"/>
                            </div>
                        </section>

                        <section id="gallery"> <!-- gallery diario -->
                            <div class="slideshow-container">

                                <xsl:apply-templates select="//tei:facsimile" />                               

                                <a class="prev" onclick="plusSlides(-1)">❮</a>
                                <a class="next" onclick="plusSlides(1)">❯</a>
                            </div>
                            <br/>  
                            <div class="puntini" >
                                <span class="dot" onclick="currentSlide(1)"></span> 
                                <span class="dot" onclick="currentSlide(2)"></span> 
                                <span class="dot" onclick="currentSlide(3)"></span>
                                <span class="dot" onclick="currentSlide(4)"></span>
                                <span class="dot" onclick="currentSlide(5)"></span>
                            </div>
                        </section>

                        <section id="visualizza">
                            <h2>Opzioni di visualizzazione</h2>
                            <div class="visualizza-body">
                                <div class="key">
                                    <h2>Parole chiave</h2>  
                                    <div class="visualizza-btns">
                                        <input type="checkbox" id="nomiluogo">Luoghi</input>
                                        <!--<input type="checkbox" id="nomipersona">Persone</input>-->                       
                                    </div>
                                </div>
                                <div class="edit">
                                    <h2> Interventi editoriali </h2>
                                    <div class="visualizza-btns">
                                        <input type="checkbox" id="abbreviazioni">Abbreviazioni</input>                          
                                        <input type="checkbox" id="del">Cancellazioni</input>                          
                                        <input type="checkbox" id="gap">Gap</input>
                                        <input type="checkbox" id="reg">Normalizzazioni</input>
                                        <input type="checkbox" id="add">Aggiunte</input>
                                        <input type="checkbox" id="corr">Correzioni</input> 
                                    </div>
                                </div>
                            </div>
                        </section>

                        <section id="trascrizione"> <!-- trscrizione diario -->
                            <h2>Trascrizione</h2>
                            <div class="pages">
                                <xsl:apply-templates select="//tei:text[@subtype='diary']/tei:body" />   
                            </div>                            
                        </section>

                        <section id="bibliografia"> <!-- bibliografia -->
                            <h2>Bibliografia</h2>
                            <div class="biblio">
                                <xsl:apply-templates select="//tei:listBibl" />
                            </div>
                        </section>

                        <section id="footer"> <!-- footer -->
                                <h2>Informazioni sul progetto</h2>
                                <div class="footer-container">
                                    <p><xsl:apply-templates select="//tei:editionStmt"/></p>
                                    <p><xsl:apply-templates select="//tei:teiHeader/tei:encodingDesc/tei:p"/></p>                               
                                </div>
                        </section>
                        <div id="top">Torna su</div> <!-- bottone tona su -->
                    </main>
                </body>
            </html>

        </xsl:template>

        <!-- Lista template per visualizzare i contenuti dell'header -->
        
        <!-- Template INFORMAZIONI SULLA FONTE -->
        <xsl:template match="//tei:teiHeader/tei:fileDesc//tei:msContents">
            <div class="infofonte">
                <table class="detail-list">
                    <tr class="detail-list-row">
                        <td class="detail-list-name">
                            <span><strong>Titolo</strong></span>
                        </td>
                        <td class="detail-list-value">
                            <span><xsl:value-of select="tei:msItem/tei:title"/></span>
                        </td>
                    </tr>
                    <tr class="detail-list-row">
                        <td class="detail-list-name">
                            <span><strong>Autore</strong></span>
                        </td>
                        <td class="detail-list-value">
                            <span><xsl:value-of select="tei:msItem/tei:author"/></span>
                        </td>
                    </tr>
                    <tr class="detail-list-row">
                        <td class="detail-list-name">
                            <span><strong>Lingua</strong></span>
                        </td>
                        <td class="detail-list-value">
                            <span><xsl:value-of select="tei:msItem/tei:textLang"/></span>
                        </td>
                    </tr>
                    <tr class="detail-list-row">
                        <td class="detail-list-name">
                            <span><strong>Collezione</strong></span>
                        </td>
                        <td class="detail-list-value">
                            <span><xsl:value-of select="../tei:msIdentifier/tei:collection"/></span>
                        </td>
                    </tr>
                    <tr class="detail-list-row">
                        <td class="detail-list-name">
                            <span><strong>Manoscritto</strong></span>
                        </td>
                        <td class="detail-list-value">
                            <span><xsl:value-of select="../tei:msIdentifier/tei:idno[@type='inventory']"/></span>
                        </td>
                    </tr>
                    <tr class="detail-list-row">
                        <td class="detail-list-name">
                            <span><strong>Luogo di conservazione</strong></span>
                        </td>
                        <td class="detail-list-value">
                            <span><xsl:value-of select="../tei:msIdentifier/tei:repository"/></span>
                        </td>
                    </tr>
                    <tr class="detail-list-row">
                        <td class="detail-list-name">
                            <span><strong>Storia</strong></span>
                        </td>
                        <td class="detail-list-value">
                            <p><xsl:value-of select="../tei:history/tei:origin/tei:p"/></p>
                        </td>
                    </tr>
                </table>
            </div>
        </xsl:template>

        <!-- Template DESCRIZIONE FISICA -->    
        <xsl:template match="//tei:teiHeader/tei:fileDesc//tei:physDesc">
            <div class="desc">
                <table class="detail-list">
                    <tr class="detail-list-row">
                        <td class="detail-list-name">
                            <span><strong>Supporto</strong></span>
                        </td>
                        <td class="detail-list-value">
                            <span><xsl:value-of select="//tei:material"/></span>
                        </td>
                    </tr>
                    <tr class="detail-list-row">
                        <td class="detail-list-name">
                            <span><strong>Quantità</strong></span>
                        </td>
                        <td class="detail-list-value">
                            <xsl:value-of select="//tei:measure"/>. 
                            <xsl:value-of select="//tei:foliation"/>
                        </td>
                    </tr>
                    <tr class="detail-list-row">
                        <td class="detail-list-name">
                            <span><strong>Condizioni</strong></span>
                        </td>
                        <td class="detail-list-value">
                            <span><xsl:value-of select="//tei:condition"/></span>
                        </td>
                    </tr>
                    <tr class="detail-list-row">
                        <td class="detail-list-name">
                            <span><strong>Grafia</strong></span>
                        </td>
                        <td class="detail-list-value">
                            <span><xsl:value-of select="//tei:typeDesc"/></span>
                        </td>
                    </tr>
                    <tr class="detail-list-row">
                        <td class="detail-list-name">
                            <span><strong>Mani</strong></span>
                        </td>
                        <td class="detail-list-value">
                            <span><xsl:value-of select="//tei:handDesc"/></span>
                        </td>
                    </tr>
                    <tr class="detail-list-row">
                        <td class="detail-list-name">
                            <span><strong>Note</strong></span>
                        </td>
                        <td class="detail-list-value">
                            <span><xsl:value-of select="//tei:note[@xml:id='note1']"/></span>
                        </td>
                    </tr>
                </table>
            </div>
        </xsl:template>

        <!-- Template SLIDER IMMAGINI -->
        <xsl:template match="tei:facsimile">
            <xsl:for-each select="//tei:surface">
                <!-- slider che ospita le immagini relative alle pagine -->
                <div class="mySlides">
                    <xsl:element name="img">
                        <xsl:attribute name="id">carosel-image</xsl:attribute>
                        <xsl:attribute name="src">img/<xsl:value-of select="tei:graphic/@url"/></xsl:attribute>
                    </xsl:element>
                </div>
            </xsl:for-each>
        </xsl:template>


        <!-- Pagine -->
        <xsl:template match="tei:pb">
            <xsl:element name="h3">
                <xsl:attribute name="id">pagina-<xsl:value-of select="[@n]"/></xsl:attribute>
                <xsl:attribute name="class">section-title</xsl:attribute>
                    Pagina <xsl:value-of select="[@n]"/>
            </xsl:element>
        </xsl:template>
  
        <!-- Righe  -->
        <xsl:template match="tei:lb">
            <xsl:element name="br"></xsl:element>
            <xsl:element name="span">
                <xsl:attribute name="id">
                    <xsl:value-of select="@facs"/>
                </xsl:attribute>
                <xsl:attribute name="class">row-number</xsl:attribute>
                <xsl:value-of select="@n" />&#160; 
                <xsl:apply-templates/>
            </xsl:element>
        </xsl:template>

        <!-- Correzioni -->
        <xsl:template match="tei:choice/tei:corr">
            <corr>
                <xsl:element name="span">
                    <xsl:attribute name="class">corr</xsl:attribute>
                    <xsl:apply-templates />
                </xsl:element>
            </corr>
        </xsl:template>

        <!-- Abbreviazioni -->
        <xsl:template match="tei:abbr">
            <xsl:element name="span">
                <xsl:attribute name="class">abbr</xsl:attribute>
                <xsl:apply-templates/>
            </xsl:element>
        </xsl:template>

        <!-- Normalizzazioni  -->
        <xsl:template match="tei:choice/tei:reg">
            <reg>
                <xsl:element name="span">
                    <xsl:attribute name="class">reg</xsl:attribute>
                    <xsl:apply-templates />
                </xsl:element>
            </reg>
        </xsl:template>

        <!-- Aggiunte -->
        <xsl:template match="tei:add">
            <add>
                <xsl:element name="span">
                    <xsl:attribute name="class">add</xsl:attribute>
                    <xsl:apply-templates />
                </xsl:element>
            </add>
        </xsl:template>

        <!-- Cancellazioni -->
        <xsl:template match="tei:del">
            <del>
                <xsl:apply-templates />
            </del>
        </xsl:template>

        <!-- gap -->
        <xsl:template match="tei:gap">
            <xsl:element name="span">
                <xsl:attribute name="class">gap</xsl:attribute>
                <span class="gap">(?)</span>
            </xsl:element>
        </xsl:template>

        <!-- expan -->
        <xsl:template match="tei:expan">
            <xsl:element name="span">
                <xsl:attribute name="class">expan</xsl:attribute>
                <xsl:apply-templates/>
            </xsl:element>
        </xsl:template>

        <!-- persName -->
        <xsl:template match="tei:persName">
            <xsl:element name="span">
                <xsl:attribute name="class">nome</xsl:attribute>
                <xsl:apply-templates/>
            </xsl:element>
        </xsl:template>


        <!-- placeName -->
        <xsl:template match="tei:placeName">
            <xsl:element name="span">
                <xsl:attribute name="class">place</xsl:attribute>
                <xsl:apply-templates/>
            </xsl:element>
        </xsl:template>

        <!-- tooltip persName -->
        <xsl:template match="//tei:persName"> 
            <xsl:variable name="REFperson">
                <xsl:value-of select="substring(./@ref,2)"/>
            </xsl:variable>
            <span class="tooltip"><xsl:apply-templates />
            <span class="ht">
                <a><xsl:value-of select="//tei:person[@xml:id=$REFperson]/tei:persName"/></a><br/>
                    <xsl:if test="//tei:person[@xml:id=$REFperson]/tei:birth">
                    <xsl:text>Nascita: </xsl:text> <xsl:value-of select="//tei:person[@xml:id=$REFperson]/tei:birth/tei:placeName/tei:settlement[@type='municipality']"/> <xsl:text>, </xsl:text> <xsl:value-of select="//tei:person[@xml:id=$REFperson]/tei:birth/tei:date"/><br />
                    </xsl:if>
                    <xsl:if test="//tei:person[@xml:id=$REFperson]/tei:death">
                    <xsl:text>Morte: </xsl:text> <xsl:value-of select="//tei:person[@xml:id=$REFperson]/tei:death/tei:placeName/tei:settlement[@type='municipality']"/> <xsl:text>, </xsl:text> <xsl:value-of select="//tei:person[@xml:id=$REFperson]/tei:death/tei:date"/><br />

                    </xsl:if>
                <xsl:value-of select="//tei:person[@xml:id=$REFperson]/tei:note/tei:p"/>
            </span></span>
        </xsl:template>
        

        <!-- Bibliografia -->
        <xsl:template match="//tei:listBibl">
            <div class="biblio">
                <xsl:element name="ul">
                    <xsl:for-each select="current()//tei:bibl">
                        <br/>
                        <xsl:element name="li">
                            <xsl:for-each select="tei:author/tei:persName">
                                <xsl:value-of select="."/>,
                            </xsl:for-each>            
                            <xsl:element name="i">                                
                                <xsl:value-of select="tei:title"/>
                            </xsl:element>,
                            <xsl:for-each select="tei:pubPlace">
                                <xsl:value-of select="."/>,
                            </xsl:for-each>
                            <xsl:value-of select="tei:publisher"/>,
                            <xsl:value-of select="tei:date"/>
                        </xsl:element>
                    </xsl:for-each>
                </xsl:element>
            </div>
        </xsl:template>

        <!-- FOOTER -->
        <xsl:template match="tei:editionStmt"> 
            <xsl:value-of select="current()/tei:edition"></xsl:value-of>
            <xsl:for-each select="current()/tei:respStmt">
                <p><xsl:value-of select="."/></p>
            </xsl:for-each>
        </xsl:template>

        <xsl:template match="//tei:teiHeader/tei:encodingDesc/tei:p"> 
            <xsl:value-of select="."/>
        </xsl:template>

</xsl:stylesheet>