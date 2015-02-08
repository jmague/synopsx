xquery version "3.0" ;
module namespace synopsx.synopsx = 'synopsx.synopsx' ;
(:~
 : This module is the RESTXQ for SynopsX's installation processes
 : @version 0.2 (Constantia edition)
 : @since 2014-11-10 
 : @author synopsx team
 :
 : This file is part of SynopsX.
 : created by AHN team (http://ahn.ens-lyon.fr)
 :
 : SynopsX is free software: you can redistribute it and/or modify
 : it under the terms of the GNU General Public License as published by
 : the Free Software Foundation, either version 3 of the License, or
 : (at your option) any later version.
 :
 : SynopsX is distributed in the hope that it will be useful,
 : but WITHOUT ANY WARRANTY; without even the implied warranty of
 : MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 : See the GNU General Public License for more details.
 : You should have received a copy of the GNU General Public License along 
 : with SynopsX. If not, see <http://www.gnu.org/licenses/>
 :
 :)

import module namespace G = "synopsx.globals" at '../globals.xqm' ;
import module namespace synopsx.lib.commons = 'synopsx.lib.commons' at '../lib/commons.xqm' ;

import module namespace synopsx.models.tei = 'synopsx.models.tei' at '../models/tei.xqm' ;
import module namespace synopsx.mappings.htmlWrapping = 'synopsx.mappings.htmlWrapping' at '../mappings/htmlWrapping.xqm' ;

declare default function namespace 'synopsx.synopsx' ;

(:~
 : this resource function redirects to the synopsx' home
 :)
declare 
  %restxq:path("/synopsx")
function index() {
  <rest:response>
    <http:response status="303" message="See Other">
      <http:header name="location" value="/synopsx/home"/>
    </http:response>
  </rest:response>
};

(:~
 : this resource function is the synopsx' home
 : @todo give contents
 :)
declare 
  %restxq:path("/synopsx/home")
  %output:method("html")
  %output:html-version("5.0")
function home(){
 <html lang="fr" xml:lang="fr" xmlns="htpp://www.w3.org/1999/xhtml">
   <head>
      <meta charset="utf-8"/>
      <title>Un document xHTML minimal</title>
      <link href="styles.css" rel="stylesheet"/>
      <script src="scripts.js"></script>
   </head>
   <body>
      <p>Faisons chauffer le navigateur en mode XHTML5.</p>
   </body>
 </html>
};

(:~
 : this resource function is the installation
 @ todo : installation process
 :)
declare 
  %restxq:path("/synopsx/install")
  %output:method("html")
  %output:html-version("5.0")
function install(){
  <html lang="fr" xml:lang="fr" xmlns="htpp://www.w3.org/1999/xhtml">
   <head>
      <meta charset="utf-8"/>
      <title>Un document xHTML minimal</title>
      <link href="styles.css" rel="stylesheet"/>
      <script src="scripts.js"></script>
   </head>
   <body>
      <p>Faisons chauffer le navigateur en mode XHTML5.</p>
   </body>
 </html>
};
