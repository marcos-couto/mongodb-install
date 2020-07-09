<map version="1.1.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node BACKGROUND_COLOR="#ff9900" CREATED="1594238578656" ID="ID_1882264012" MODIFIED="1594238710803">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p style="text-align: center">
      INSTALA&#199;&#195;O MONGODB
    </p>
    <p style="text-align: center">
      UBUNTU 18.04 LTS
    </p>
  </body>
</html></richcontent>
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1594238792489" ID="ID_141481294" MODIFIED="1594253102733" POSITION="right" TEXT="Procedimento de Instala&#xe7;&#xe3;o">
<node CREATED="1594238834910" FOLDED="true" ID="ID_1928368445" MODIFIED="1594309089870" TEXT=" 1) ">
<node CREATED="1594240174490" ID="ID_1859241423" MODIFIED="1594252654580" TEXT="Importar a chave p&#xfa;blica/Gerenciamento de Pacotes">
<node CREATED="1594240229761" ID="ID_1872879030" MODIFIED="1594240232513" TEXT="wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add - "/>
</node>
</node>
<node CREATED="1594240268359" FOLDED="true" ID="ID_98726538" MODIFIED="1594257466242" TEXT=" 2)">
<node CREATED="1594238904453" FOLDED="true" ID="ID_718266867" MODIFIED="1594252716510" TEXT=" Arquivo de lista para o Ubuntu 18.04 (Bionic)">
<node CREATED="1594239743874" ID="ID_518422709" MODIFIED="1594240000529" TEXT="echo &quot;deb [ arch=amd64,arm64,s390x ] http://repo.mongodb.com/apt/ubuntu bionic/mongodb-enterprise/4.2 multiverse&quot; | sudo tee /etc/apt/sources.list.d/mongodb-enterprise.list"/>
</node>
</node>
<node CREATED="1594240312215" FOLDED="true" ID="ID_590883709" MODIFIED="1594309091104" TEXT=" 3)">
<node CREATED="1594239232444" ID="ID_1147814198" MODIFIED="1594240397278" TEXT=" 3) Atualizar a base de dados de pacotes dispon&#xed;veis">
<node CREATED="1594240073805" ID="ID_222737113" MODIFIED="1594240109655" TEXT="sudo apt-get update"/>
</node>
</node>
<node CREATED="1594239105796" FOLDED="true" ID="ID_1690014154" MODIFIED="1594309092388" TEXT=" 4)">
<node CREATED="1594239208715" ID="ID_1231624764" MODIFIED="1594255902693" TEXT=" Instalar os pacotes do MongoDB Enterprise  ">
<node CREATED="1594240115744" ID="ID_1672934994" MODIFIED="1594240130362" TEXT="sudo apt-get install -y mongodb-enterprise"/>
<node CREATED="1594240597699" ID="ID_1374764794" MODIFIED="1594240648690" TEXT="sudo apt-get install -y mongodb-enterprise=4.2.8 mongodb-enterprise-server=4.2.8 mongodb-enterprise-shell=4.2.8 mongodb-enterprise-mongos=4.2.8 mongodb-enterprise-tools=4.2.8 "/>
</node>
</node>
<node CREATED="1594240574939" FOLDED="true" ID="ID_754741207" MODIFIED="1594309093336" TEXT="  5)">
<node CREATED="1594251992034" FOLDED="true" ID="ID_206970280" MODIFIED="1594257029529" TEXT="&quot;Fixar&quot; a vers&#xe3;o instalada ( Para evitar upgrades n&#xe3;o intencionais)">
<node CREATED="1594252921072" ID="ID_711391563" MODIFIED="1594252981408" TEXT="echo &quot;mongodb-enterprise hold&quot; | sudo dpkg --set-selections &#xa;echo &quot;mongodb-enterprise-server hold&quot; | sudo dpkg --set-selections&#xa;echo &quot;mongodb-enterprise-shell hold&quot; | sudo dpkg --set-selections &#xa;echo &quot;mongodb-enterprise-mongos hold&quot; | sudo dpkg --set-selections&#xa;echo &quot;mongodb-enterprise-tools hold&quot; | sudo dpkg --set-selections"/>
</node>
</node>
</node>
<node CREATED="1594253116048" FOLDED="true" ID="ID_811407526" MODIFIED="1594309094321" POSITION="right" TEXT="Procedimento de Teste p&#xf3;s Instala&#xe7;&#xe3;o">
<node CREATED="1594253145231" ID="ID_589378656" MODIFIED="1594257801372" TEXT="Executar e gerenciar seu processo mongod">
<node CREATED="1594253266699" ID="ID_656891905" MODIFIED="1594256282743" TEXT=" systemd ">
<node CREATED="1594253330749" FOLDED="true" ID="ID_1811041720" MODIFIED="1594254008421" TEXT="comando systemctl">
<node CREATED="1594253478535" ID="ID_109931828" MODIFIED="1594253888703" TEXT="sudo systemctl start mongod"/>
<node CREATED="1594253893654" ID="ID_727425829" MODIFIED="1594253907674" TEXT="sudo systemctl status mongod"/>
<node CREATED="1594253927022" ID="ID_191391069" MODIFIED="1594253951118" TEXT="sudo systemctl enable mongod"/>
<node CREATED="1594253956191" ID="ID_1422783011" MODIFIED="1594253968910" TEXT="sudo systemctl stop mongod"/>
<node CREATED="1594253990751" ID="ID_1916304869" MODIFIED="1594253994430" TEXT="/var/log/mongodb/mongod.log"/>
</node>
</node>
<node CREATED="1594253289456" ID="ID_179666003" MODIFIED="1594253323603" TEXT="System V init">
<node CREATED="1594253311856" ID="ID_10413497" MODIFIED="1594253447191" TEXT="comando service"/>
</node>
</node>
</node>
<node CREATED="1594238693966" ID="ID_692560926" MODIFIED="1594238760960" POSITION="left" TEXT="Coment&#xe1;rios Iniciais"/>
</node>
</map>
