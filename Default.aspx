<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!doctype html>
<!-- The Time Machine GitHub pages theme was designed and developed by Jon Rohan, on Feb 7, 2012. -->
<!-- Follow him for fun. http://twitter.com/jonrohan. Tail his code on https://github.com/jonrohan -->
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

  <link rel="stylesheet" href="/GertboardTutorial/assets/css/style.css?v=d87dc430ac711becd90e556eddb7136ad39eff98">
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
  <script type="text/javascript" src="/GertboardTutorial/assets/js/script.js"></script>

  <title>GertboardTutorial</title>
  <meta name="description" content="A Tutorial for the Raspberry Pi and the elemte 24 Gertboard">

  <meta name="viewport" content="width=device-width,initial-scale=1">

</head>

<body>

  <div class="wrapper">
    <header>
      <h1 class="title">GertboardTutorial</h1>
    </header>
    <div id="container">
      <p class="tagline">A Tutorial for the Raspberry Pi and the elemte 24 Gertboard</p>
      <div id="main" role="main">
        <div class="download-bar">
        <div class="inner">
          
          <a href="https://github.com/JayWee/GertboardTutorial" class="code">View GertboardTutorial on GitHub</a>
        </div>
        <span class="blc"></span><span class="trc"></span>
        </div>
        <article class="markdown-body">
          <h1 id="gertboard-tutorial">Gertboard Tutorial</h1>

<h2 id="Einleitung">Einleitung</h2>

Der Raspberry Pi ist ein Mini-Computer, der vieles von dem, was ein normaler Computer auch kann: Er hat eine graphische Oberfläche, einen Internetbrowser und andere Programme. <br />
Es gibt aktuell drei Versionen des Pi, die Funktionen sind größtenteils gleich. Das neueste Modell (<a href="https://www.rasppishop.de/Raspberry-Pi-3-Modell-B-mit-12-GHz-QuadCore-64Bit-CPU">Raspberry Pi 3 Modell B</a>) hat auch WLAN und Bluetooth an Board.

<h2>Inhalt</h2>
<ul style="list-style-type:none">
    <li><a href="#Inbetriebnahme">1. Inbetriebnahme des Pi</a></li>
    <li><a href="#Linux">2. Linux</a>
    <ul style="list-style-type:none">
        <li><a href="#Python">2.1 Erste Programme mit Python</a></li>
    </ul></li>
    <li><a href="#Windows">3. Windows 10 IoT Core</a>
    <ul style="list-style-type:none">
        <li><a href="#C#">3.1. Erste Programme mit C# über Windows</a></li>
    </ul></li>
    <li><a href="#Gertboard">4. Gertboard</a>
    <ul style="list-style-type:none">
        <li><a href="#Einführung">4.1 Einführung </a></li>
        <li><a href="#Buffer">4.2 Nutzung der Buffer </a></li>
        <li><a href="#Program">4.3 Programme mit dem Gertboard</a></li>
    </ul></li>
</ul>

<h2 id="Inbetriebnahme">1. Inbetriebnahme des Pi</h2>
<p>
Der Pi besitzt keine eigene interne Festplatte oder sonstigen internen Speicher. Deshalb muss man ihm einen stellen. Dies geschieht in Form einer SD-Karte (ab dem Raspberry Pi 2 eine microSD-Karte) mit mindestens 8 GB Speicher (am besten Class 10, bei Windows IoT werden SD-Karten erst ab Class 4 unterstützt).  <br />
Es gibt zwei Betriebssysteme, die Hauptsächlich mit dem Pi benutzt werden. Vor allem ist dies Linux (Raspbian), welches eine vollständige Desktopoberfläche hat. Die Alternative ist Windows 10 IoT Core, welches allerding erst ab der 2. Version des Pi für diesen verfügbar ist). Dieses Betriebssystem bietet keine graphische Oberfläche, allerdings kann auf alle Funktion über ein anderen Rechner mit Windows zugegriffen werden. Ebenfalls ist es dann möglich mit <a href="https://www.visualstudio.com/de/">Visual Studio 2015 Community</a>, einem Compiler für diverse Sprachen(C/C#/C++/JavaScript/Visual Basic/Phython) von Microsoft, Remote-Debugging zu betreiben.
</p>

<h2 id="Linux">2. Linux</h2>

<p>
Als erstes muss eine Installationsdatei für Linux heruntergeladen werden, welches <a href="https://downloads.raspberrypi.org/raspbian_latest">hier</a> verfügbar ist. Das letztendliche Linux nennt sich Raspbian und ist kostenlos. <br />
Diese liegt in Form einer einer Zip-Datei, die entpackt werden muss. Anstatt der zip-Datei hat man jetzt eine IMG-Datei. <br />
Die Sd-Karte muss nun mit dem Computer verbunden werden, um die IMG-Datei drauf zu spielen. 
</p>

<h3>
Windows 
</h3>

<p>
Man installiert nun das Program <a href="http://sourceforge.net/projects/win32diskimager">Win32DiskImager</a>. Die geladene Datei wird anschließend entpackt und ausgeführt. Mit Hilfe des Programmes installiert man Raspian auf dem Pi. 
</p>


<h3>
Mac
</h3>
<p>
Falls man Raspian mit einem Mac installiert: Als erstes muss sichergestellt werden, dass die SD-Karte im Format MS-DOS (FAT) formatiert ist:  Dafür benutzt man das Festplattendienstprogramm. Dort klickt man auf die SD-Karte an der linken Seite: Wichtig ist, dass man auf die obere klickt, nicht die untere.    <br />
Jetzt wählt man aus der oberen Leiste Löschen aus und dann einen Namen (Ohne Titel), das Format (MS-DOS-Dateisytem (FAT)), und das Schema (GUID). Nun klickt man auf Löschen. <br />
Jetzt merkt man sich die Zahl die unten rechts im Feld Gerät steht: <code>diskx</code>.<br />
Anschließend öffnet man das Terminal (Programme -> Terminal) und gibt den Befehl: <code>sudo dd bs=1m if=path_of_your_image.img of=/dev/rdiskx</code> ein.<br />
Statt <code>path_of_your_image.img</code> gibt man den Pfad der IMG Datei ein. Diese kann man aus dem Finder kopieren. Dafür wählt man die IMG-Datei aus und rechts-klickt auf die Datei und wählt Informationen aus. Für x setzt man die Zahl aus dem Festpalttendienstprogramm ein und führt den Befehl aus. <br />
Schlägt der Befehl fehl, kann man statt <code>rdisk</code> auch nur <code>disk</code> verwenden.<br />
Ist der Befehl ausgeführt, kann die SD-Karte ausgeworfen und in den Pi gesteckt werden. 
</p>
<h3 id="7">Der erste Start</h3>
<p>
Jetzt steckt man die SD-Karte, auf der das Raspbian installiert ist, in den Pi, der über ein Micro-USB-Kabel mit Strom versorgt wird.  <br />
Nun beginnt der Pi den Startvorgang. In der Zeit sollte man ein LAN-Kabel zur Versorgung mit Internet anschließen. (die Pi der Schule müssen nur angeschlossen werden, sie haben schon Internet. Eigene Pi's müssen erst registriert werden.)
</p>

<h3>
Zugriff auf den Pi 
</h3>
<p>
Der Pi ist nach etwa 2 Minuten bereit um mit ihm zu arbeiten und auf ihn zuzugreifen. Das ist mittels SSH möglich:<br />
Das Herstellen einer SSH-Verbindung zum Rasperry Pi ist sehr nützlich zum Ausführen von Befehlen. Man kann sich dann das anschließen von Monitor und Tastatur an den Pi sparen und vom eigenem Laptop oder Schulrecher aus den Pi steuern.
</p>


<h3>
Verbindung aufbauen
</h3>

<h3>
Linux, macOS
</h3>
<p>
macOS basiert auf Linux und da Linux einen SSH-Klienten mitbringt, gelten diese Schritte auch für macOS.  <br />

Man öffnet das Terminal und führt folgenen Befehlen aus:<code>ssh pi@ip</code> <br /> 
<code>ip</code> ist die Adresse unter der man den Pi erreicht. Man findet sie zuhause über den Router und in der Schule mittels iSurf. <br />
Man ist nun auf dem Raspberry Pi eingewehlt und kann Befehle und Programme direkt auf dem Pi ausführen. <br />
Falls man die Verbindung beenden möchte, sendet man entweder den Befehl <code>exit</code> oder schließt das Terminal.
</p>

<h3 id="Python">2.1 Erste Programme mit Phyton über Linux</h3>
<p>
Es ist nun möglich Programme direkt auf dem Pi zu schreiben in dem man die Programmiersprache Python benutzt. <br />
Man kann aber auch auf dem Mac, auf dem man auch das Terminal ausführt, Programme schreiben.<br />
(Ich empfehle, zum Schreiben von Programmen Xcode zu benutzen, dieses Programm ist kostenfrei im <a href="https://itunes.apple.com/us/app/xcode/id497799835?mt=12">MacApp Store</a> verfügbar. Auch TextWrangler eignet sich, ist aber ein wenig komplizierter.)
</p>

<h4>  
Anlegen eines Dokuments auf dem Pi
</h4>

Man öffnet das Terminal und führt abermals den Befehl <code>ssh pi@ip</code> aus. Nun loggt man sich mit dem Passwort ein und gibt den Befehl <code>nano Test.py</code> ein. Jetzt öffnet sich der Python-Editor, mit dem man die Programme schreiben kann. Jetzt kann man hier den Code eigegben.

<h4>Das erste Programm</h4>
Möchte man eine LED zum leuchten bringen, schließt man eine LED über ein Jumper-Kabel und einen Widerstand am Pi an. Die Pins die benutzt werden, sind der Ground-Pin und Pin 18. <br />

Als erstes müssen verschiedene Dinge importiert werden: Die Zeit <code>time</code>, die Steuerung für die Pins <code>RPi.GPIO</code><!-- und das Einlesen der Tastatur (curses) -->. Das geschieht mit dem Befehl <code>import</code> Befehl.

<h5>Programme schreiben</h5> 
Der Anfang des Programmes sieht dann so aus:  
<pre><code>import RPi.GPIO as GPIO  
import time  
</code></pre>
  
Nun definiert man die Pins als Ausgang-Pins und den GPIO Modus. Durch den Modus <code>BCM</code> wird die interne Nummerierung des Pi für die Pins verwendet. Mit dem Modus <code>BOARD</code> werden die Pins von links nach rechts, Reihe für Reihe durchgezählt (Der Pi liegt so, dass die Pins rechts oben sind):

<pre><code>GPIO.setmode(GPIO.BCM)  
GPIO.setwarnings(False)  
GPIO.setup(18,GPIO.OUT) #LED  
</code></pre>

<figure>
    <img alt="Pin Nummerierung" src="https://github.com/JayWee/SCC/blob/master/Raspberry%20Pi/GPIO/Raspberry-Pi-GPIO-pinouts.png?raw=true" />
    <figcaption><em>Eine Übersicht über alle momentan Verfügbaren Varianten des Pin-Layouts auf dem Raspberry Pi</em></figcaption>
</figure>


Um die LED zu aktivieren setzt man den output auf HIGH:
<pre><code>GPIO.output(18,GPIO.HIGH)  
time.sleep(5) #wartet fuenf Sekunden  
GPIO.output(18,GPIO.LOW) #schaltet die LED wieder aus  
GPIO.cleanup() #setzt die Steuerung zurueck  
</code></pre>

Mit crtl-x verlässt man den Editor: Erst <kbd>crtl-x</kbd> dann <kbd>y</kbd> und dann <kbd>Enter</kbd> drücken. Nun gibt man den Befehl <code>sudo phyton Test.py</code> ein, um das Programm auszuführen.

Jetzt kann man eine Abfolge von LED leuchten erstellt:	
<pre><code>GPIO.setup(17,GPIO.OUT) #rot  
GPIO.setup(18,GPIO.OUT) #gelb   
GPIO.setup(27,GPIO.OUT) #gruen   
GPIO.setup(22,GPIO.OUT) #rotf  
GPIO.setup(23,GPIO.OUT) #gruenf  
</code></pre>

Alle als output definiert und dann mittels <code>time.sleep</code> verschiedene Blitzlichter und Morse-Codes erstellt.  
Beispiel:   
<pre><code>GPIO.output(18,GPIO.HIGH)  
time.sleep(0.5)  
GPIO.output(18,GPIO.LOW)  
time.sleep(0.5)  
</code></pre>

Um daraus eine Schleife zu machen setzt kann man einen Counter einsetzen. Am Anfang des Programmes <code>count = 0</code> setzen und dann <code>while (count < x):</code> das sieht dann so aus:  
<pre><code>count = 0  
while (count < x):
</code></pre>
darunter dann den Inhalt der Schleife setzen. Diese ist jetzt unendlich. Wenn man ans Ende ein <code>counter += 1</code> setzt wird der Counter nach jeden Durchlauf um 1 erhöht und das Programm endet nach x Durchläufen. 

<code>(2,GPIO.IN)</code> definiert Pin 2 als Eingang. Das gegegebn kann man mit der Funktion <code>if GPIO.input(2) == GPIO.HIGH</code> und einem Schlater eine Ampel bauen. Mit <code>print "text"</code> können die einzelnen Schritte in der Konsole beschrieben werden, um ein debugging möglich machen kann. Hier ein Beispiel für eine <a href="https://github.com/JayWee/Gertboard-Tutorial/blob/master/Ampel.py">Ampelschaltung</a>.


<h2 id="Windows">
3. Windows 10 IoT Core
</h2>
<p>
Windwos 10 Iot Core ist ein kostenloses Betriebssystem für Kleingeräte von Microsoft ohne graphische richtige Oberfläche (es gibt keinen Desktop für klassische Programme, man kann allerdings Netzwerkeinstellungen auch ohne Konsole machen). Im Gegensatz zum normalen Windows ist IoT Core allerdings darauf spezialisiert LEDs, Sensoren und Motoren anzusteuern. Ebenfalls anders ist, das man per Remote Connection einiges mehr machen kann, als über die eigene Oberfläche. Deshalb kann Windows IoT Core auch mit Geräten genutzt werden, die keinen Bildschirmausgang haben.
</p>

<h3>
Installation auf der SD-Karte
</h3>
<p>
Da IoT Core nur  mit Raspberrys ab der zweiten Generation funktioniert, brauch man auf jeden Fall eine microSD-Karte. Diese muss mindestens 8 GB Speicher haben. Die Daten die noch auf dieser sind werden beim Installieren von IoT Core gelöscht. <br />
Zum Installieren auf der SD-Karte wird das Programm <em><a href="https://developer.microsoft.com/en-us/windows/iot/GetStarted">Windows 10 IoT Dashboard</a></em> benötigt. Die verlinkte Seite enthält ebenfalls eine Anleitung zum Installieren von IoT Core.  <br />
Nach dem installieren dieses Programms muss es geöffnet werden. Unter Gerätetyp dann den Raspberry auswählen. Bei Betriebssystembuild "Windows 10 IoT Core" ausgewählt lassen und bei Laufwerk die SD-Karte auswählen. (Meistens hat das Programm von vornherein schon das Richtige ausgewählt.) Bei Gerätename kann ein beliebiger Name eingesetzt werden. Mit dem gesetzten Administratorpasswort kann man sich dann per Benutzname "administrator" und dem gewählten Passwort einloggen. Zum Installieren muss dan noch die Lizenzbedingung akzeptiert werden und dann unten rechts auf den Button gedrückt werden.  
</p>
<h3>
Übername von WLAN-Profilen
</h3>
<p>
Wenn auf dem instalierendem Rechner WLAN-Profile bestehen und entweder ein Modell ab Stufe 3 des Raspberrys verwendet wird, oder eein WLAN-Adapter per USB verbunden wurde, können diese dann direkt, oben rechts bei der Installation, mit ünernommen werden. So meldet sich der Pi beim ersten mal Booten direkt per WLAN an und es kann dann auch direkt über diese Verbindung auf ihn zugegriffen werden.  
</p>

<h3>Zugreifen auf den Pi </h3>
Dafür braucht man wieder das Programm <em>Windows 10 IoT Dashboard</em>. In diesem geht man auf den Reiter "<em>Meine Geräte</em>". Dort wird der Raspberry dann mit dem gegebenem Namen, seinem Typ und der IP-Adresse angezeigt. Mit einem Rechtsklick auf den Raspberry wird ein Menü geöffnet. Der erste Unterpunkt heißt <em>Im Device Portal öffnen</em>. Wenn man darauf klickt, wird der Standartbrowser geöffnet und nach den Anmeldedaten für den Raspberry gefragt. Diese sind "administrator" und das eben gewählte Passwort. Die Oberfläche, die sich dann öffnet, ist das Hauptbedienelement des Pi.<br />
<h4>Device Portal</h4>
<h5>Home</h5>
Auf dem Home-Screen kann man den Namen, das Passwort, die Zeitzone oder die Bildschirmeinstellungen ändern. Ebenso kann dort ein PIN für das Remote Debugging gesetzt werden.
<h5>Apps</h5>
In diesem Fenster werden alle bisher per Remote Debugging ausgeführten und acuh alle anderen installierten Apps dargestellt. ebenso können hier neue Apps installiert werden.
<h5>Processes/Performance</h5>
Diese beiden Unterpunkte sind sozusagen der Task-Manager für den Pi.
<h5>Devices</h5>
Hier kann man alle Treiber einsehen. Ebenso kann man den GPIO-Controller-Treiber ändern. Für die Nutzung von PWM (= <em>pulse-width modulation</em>) ist dieser unterpunkt später wichtig.
<h5>Bluetooth/Audio</h5>
Hier können die Einstellung für die in der Überschrift genannten Funktionen geändert werden.
<h5>Networking</h5>
Im ersten Unterpunkt kann der WiFi-Adapter ausgewählt werden und ein spezifisches WLAN-Profil zum Verbinden genutzt werden. Außerdem werden noch die verfügbaren Natzwerke angezeigt und die IP-Konfiguration. 
<h5>Windows Update</h5>
Hier kann man nach neuen Updates suchen lassen.

<h4>Netzwerkfreigabe</h4>
Über das gleiche Menü, über das das Device Portal geöffnet wird, kann man auch die Netzwerkfreigabe öffnen. Über diese ist es möglich auf das Datei-System des Pi direkt zuzugreifen. 
<h4>Weitere Funktionen des IoT Dashboards</h4>
Weiterhin kann man über das selbe Menü auch die Remote Komandozeile öffnen, die IP-Adressen des Pi kopieren und diesen Herunterfahren und Neustarten.


<h3 id="C#">3.1 Erste Programme über Windows IoT Core</h3>
Mit Windows IoT Cre kann man in diversen Sprachen seine Programme schreiben. auch hier kann man Python benutzen. Am meisten benutz wird allerdings C#. Im untertschied zu Python, welche eine Script-Sprache ist, müssen C# Programme erst Kompiliert werden, bevor sie ausgeführt werden können. In diesem Tutorial beschäftigen wir uns mit C#.<br />
Da dieses Tutorial sich mit einer Weiterführung von C# beschäftigt, sollte man vorher ein gennerelles Verständnis für Programiersprachen haben. Für den Einstieg in C# ist hier ein <a href="http://kushellig.de/c/">Liste von Tutorials</a> zum lernen von C#.

<h4>Programieren auf Windows IoT</h4>          
Für das Schreiben von Programmen auf Windows IoT empfielt sich <a href="https://www.visualstudio.com/de/">Visual Studio</a>, da man über dieses Programm direkt auf dem Pi Remote Debuggen kann, das heißt, das man das Progamm ohne es zu exportieren und manuell auf den Pi zu schieben auf dem Pi direkt Testen kann. Das Tutorial wird auch mit diesem Programm erklärt. Codeausschnitte sind aber für UWPs(Universial Windows Programm) allgemeingültig<br />
<h5>Erstellen eines Projektes</h5>
Wenn man dann Visual Studio öffnet, klickt man auf der Startseite unter dem Punkt <em>Start</em> auf <em>Neues Projekt</em>. Dann unter <em>Templates/Visual C#/Windows/Universal</em> auf <em>Blank App (Universal Windows)</em> und benennet sein Projekt in der Zeile Name. <br />
In dem Fenster, dass man dann öffnet, kann man die Windowsversionen, für die das Programm geschrieben werdens soll auswählen. Die voreingestellten Versionen kann man so lassen. So funktioniert das Programm auf den meisten geräten mit Windows 10. Das besondere an Windows Universial Programmen ist, dass diese auf wirklich jedem Windows 10 Gerät funktionieren, also auf dem eigenen Standrechner, dem Laptop, dem Windows-phone und natürlich auch auf dem Raspberry Pi mit Windows IoT Core.
<h5>Erstes Programm (Zugriff auf den GPIO-Controller)</h5>
Als erstes öffnet sich nach dem Erstellen eines neuen Projektes in Visual Studio die Datei <em>App.xaml.cs</em>. Diese ist erstmal irrelevant. Durch Doppelklicken wird die Datei <em>MainPage.xaml.cs</em> unter dem Reiter <em>MainPage.xaml</em> geöffnet. <br />
<p>Um die Befehle zum zugreifen auf den GPIO-Contorller zu laden, muss am Anfang der Code-Datei das Namespace <code>Windows.Devices.Gpio</code> hinzugefügt werden. <br />
Als erstes muss dann der GPIO-Pin, den man benutzen möchte, initialisiert werden. <br />
<pre>
    <code>
private GpioPin led;

private void InitGpio()
{
    var gpio = GpioController.GetDefault();

    if (gpio == null)
    {
        led= null;
        return;
    }

    led = gpio.OpenPin(17);
    led.SetDriveMode(GpioPinDriveMode.Output);
    led.Write(GpioPinValue.Low);
}
    </code>
</pre>
In der ersten Zeile wird zuerst eine Varbiable des Typs <code>GpioPin</code> erstellt. <br />
Mit <code>GpioController.GetDefault();</code> erhält man den GPIO-Controller. <br />
Für die Initialisierung eines GPIO-Pins muss man zuerst den entsprechenden Pin öffnen. Dies geschieht mit dem Befehl <code>gpio.OpenPin()</code>. In der Klammer wird der zu öffnende Pin gesetzt. Dies kann entweder direkt mit einer Zahl des Typs <code>int</code> geschehen, oder mit einer konstanten Variablen des Typs <code>int</code>.<br />
Mit dem Befahl <code>SetDriveMode(GpioPinDriveMode.Output)</code> wird dem GPIO-Pin ein Benutzungsmodus zugeteilt. Mögliche Modi sind unteranderem <code>Output, Input, InputPullUp</code> oder <code> InputPullDown</code>.<br />
Schließlich wird dem Pin gesagt, ob er an sein soll, oder nicht. Dies geschieht mit dem Befahl <code>Write(GpioPinValue.Low)</code>(Der Pin gibt keinen Strom aus) oder <code>Write(GpioPinValue.High)</code>(Der Pin gibt Strom aus). Im restlichen Programm kann nach dem Initialisieren mit den gleichen Befehlen der Pin an- oder ausgeschaltet werden.<br />
Das vollständige Beispielprogramm findet ihr <a href="https://github.com/JayWee/LEDBlink">hier</a>.
</p>
<h5>Nutzung des UI (<em>User Interface</em>)</h5>
Alle Universial Windows Fordergrundprogramme besitzen ein UI. Dieses wird in der Datei MainPage.xaml definiert. Diese Datei ist in der Markupsprache XAML geschrieben. <br />
In dieser Datei kann man verschiedene Bedienelemente für sein Programm hinzufügen, wie Schalter, Buttons oder Schieberegler. Ebeso kann man hier über Textboxen Text ausgeben. <br />
Diese Objekte werden über Tags erstellt. Diese müssen zwischen den Tags <code>&lt;grid&lt;</code> und <code>&lt;/grid&lt;</code> stehen. <br />
Für die eben aufgezählten Bedienelemnte gilt:
<table>
    <tr>
        <th>UI-Element</th>
        <th>XAML-Befehl</th>
        <th>Funktion</th>
    </tr>
    <tr>
        <td>Schalter</td><%--Element--%>
        <td></td><%--Befehl--%>
        <td></td><%--Funktion--%>
    </tr>
</table>



<h2 id="Gertboard"> 4. Gertboard </h2>
<img src="https://github.com/JayWee/Gertboard-Tutorial/blob/master/gertboard_real.png?raw=true" alt="Gertboard Real" />
<h3 id="Einführung"> Einführung </h3>
Das Gertboard von element14 ist ein Erweiterungsboard für alle Versionen des Raspberry Pi. Das Gertboard ist für 26 GPIO-Pins gemacht, passt also perfekt auf die Pins des Raspberry Pi 1 und anderer Versionen des Modells A. Bei den B Modellen dagegen sind auf dem Pi 14 Pins mehr, als mit dem Gertboard verbunden werden können.  <br />
Das Gertboard ist mit s. g. Buffern ausgestattet. Diese schützen den Pi bei der benutzung der GPIO-Pins vor Kurzschlüssen. Weiterhin sind auf dem Gertboard noch anschlüsse für eine externe Energiequelle, um Motoren, die eine höhere Spannung brauchen als der Pi liefern kann (3,3V bzw. 5V), mit dem Pi zu betreiben.  

<h4 id="Aufbau">Aufbau</h4> 
<img src="https://github.com/JayWee/Gertboard-Tutorial/blob/master/gertboard_real_blocks.png?raw=true" alt="Gertboard Real Blocks" /><br />
Wie oben in der Graphik zu erkennen ist, ist das Gertboard in sechs Blöcke unterteilt. Diese haben keine Verbindung untereinander.  <br />
Für dieses Tutoral sind nur der schwarze und der rote Block von Relevanz.<br />
Der schwarz umrandete Block umfasst die Verbindung zum Pi (auf der Rückseite) und Pins, die direkt mit den GPIO-Pins auf dem Pi verbunden sind.  <br />
Der rote Block enthält die oben schon erwähnten Buffer, Pins als Ausgänge von den Buffern, Pins zum Einstellen von Input und Output(dies muss im Programm für den Pi selber auch noch mal gemacht werden), 12 LEDs und 3 Druckknöpfe. <br />
Zusätzlich zu diesen Blöcken gibt es noch die Dauerstrom-Pins (3,3V bzw. 5V).

<h5>Aufbau der einzelnen Blöcke</h5> 
Die Platine des Gertboards ist weiß beschriftet. Auf der folgenden Schematik sind nur die Beschriftung und die einzelnen Pins dargestellt: <br /> 
 <img src="https://github.com/JayWee/Gertboard-Tutorial/blob/master/gertboard_shematic.png?raw=true" alt="Gertboard Schematisch"> <br />
Blöcke von mehreren Pins sind (Ausgenommen derer in dem Buffer-Block) mit <em>Jn</em> (n ist eine natürliche Zahl) beschriftet. Alle Chips auf der Platine sind mit "Un" beschriftet.  <br />
Ganz unten liegt <em>J1</em>. Dies ist die Verbindung zum Pi. Knapp dadrüber liegt <em>J2</em>. Die Pins in diesem Block sind direkt mit den GPIO-Pins des Pi verbunden. <br />
Weiter wichtig für dieses Tutorial sind die Chips U3-U5. Dies sind die oben genannten Buffer. Ober- und Unterhalb dieser liegen jeweils 8 Pins. Diese sind zur Bestimmung des Modus (Input/Output) gedacht und deshalb mit <em>out</em> oder <em>in</em> beschrieben. Der Block <em>J3</em> ist der Eingang zu den Buffern. Die Pins beschriftet mit <em>BUF1-12</em> sind die Input-Eingänge der Buffer. Zusätzlich zu diesen Input-Pins ist an jeden Buffer-Pin noch eine LED geschaltet und dies ersten drei Buffer Pins (<em>B1-3</em>) sind mit den drei Knöpfen noch verbunden.<br />
Die eben schon erwähnten Dauerstrom-Pins befinden sich in den kleine Böcken <em>J7, J27</em> und oben links in der Ecke nur <em>3V3</em> beschriftet. <br />

<h4 id="Buffer">Nutzung der Buffer</h4>

<h4> Verbindung mit dem Pi </h4>
Um das Gertboard mit dem Raspberry Pi zu verbinden, muss das Gertboard auf die linken (Der Pi ist so gedreht, dass die Pins oben links liegen) 26 GPIO-Pins gesteckt werden. Bei B Modellen des Pi sind somit die vierzehn rechten Pins nicht mit dem Gertboard verbunden und auf sie kann somit nicht auf dem Gertboard zugegriffen werden. Damit die Buffer-Ausgänge auch Signale senden können müssen bei <em>J7</em> (3,3V Dauerstrom) zwei der drei Pins miteinander Verbunden werden (am besten mit einem <a href="https://github.com/JayWee/Gertboard-Tutorial/blob/master/Shunt-Jumpers2-1383815114.jpg">Jumper</a>).    <!---(Für die, die es interessiert: [Warum hier](#10)) -->  

<h4> Arbeiten mit den LEDs und den Druckknöpfen über die Buffer </h4>
Um auf die LEDs zuzugreifen muss erstmal eine Verbindung zwischen den GPIO-Pins (<em>J2</em>) und den Buffer-Eingangs-Pins (<em>J3</em>) hergestellt werden. Jetzt sollten alle LEDs rot leuchten.  <br />
Dann muss der Hardware gesagt werden wie welcher Bufferpin genutzt werden soll (Input/Output). Dafür müssen bei einem Output die beiden Pins, die mit <em>Bx out</em> (x ist die Nummer des gewählten Buffereingangs) beschriftet sind, am besten mit einem Jumper verbunden werden. Beim Aufstecken der Jumper, sollte die entsprechende LED ausgehen. Falls nicht, sollte dies spätestens beim starten des Programms passieren.  <br />
Um die Druckknöpfe zu verwenden, muss man über B1-3 darauf zugreifen und entgegen der Tatsache, dass es sich um einen Input handelt, auch einen Jumper bei <em>Bx out</em> plazieren (Im Programm müssen die entsprechenden GPIO-Pinsallerdings auf Input gestellt sein). Auf die LEDs der benutzten Knöpfe kann dann nicht mehr zugegriffen werden. Diese Leuchten jetzt beim Starten des Programms. Wenn dann einer der Knöpfe gedrückt wird, geht die entsprechende LED beim Gedrückt sein aus und beim Loslassen wieder an.

<h4> Arbeiten mit externen Geräten über die Buffer </h4>
Wenn mit externen Geräten oder LEDs gearbeitet werden soll, werden nicht beide <em>Bx out</em> Pins miteinander verbunden, sondern einer von diesen mit der externen LED. Alle Pins mit dem Senkrecht-Zeichen (umgedrehtes T) oder GND beschriftet sind können als Ground-Pin verwendet werden. Wenn ein Pin als Input genutzt werden soll, wird ein Jumper bei <em>Bx in</em> gesetzt und die Input-Quelle mit einem der BUF-Pins.

<h4 id="Program"> Progamieren mit dem Gertboard</h4>
Mit dem Gerdboard kann genauso programiert werden, wie mit einer direkten Verbindung zum Pi. Zu beachten ist nur, dass die Beschriftung der Pins in <em>J2</em> die des Pi erster Generation ist, und somit für alle nachfolgenden Pi gilt: Der mit <em>21</em> beschriftete Pin auf dem Gertboard ist im System der Pin <em>27</em>. Die Nummerierung auf dem Gertboard entspricht der Nummerierung, die der Pi intern benutzt. <br />

    
 </article>
      </div>
    </div>
    <footer>
      <div class="owner">
      
      <p><a href="https://github.com/JayWee" class="avatar"><img src="https://github.com/JayWee.png" width="48" height="48"></a> <a href="https://github.com/JayWee">JayWee</a> maintains <a href="https://github.com/JayWee/GertboardTutorial">GertboardTutorial</a></p>
      

       

      </div>
      <div class="creds">
        <small>This page generated using <a href="https://pages.github.com/">GitHub Pages</a><br>theme by <a href="https://twitter.com/jonrohan/">Jon Rohan</a></small>
      </div>
    </footer>
  </div>
  <div class="current-section">
    <a href="#top">Scroll to top</a>
    <a href="https://github.com/JayWee/GertboardTutorial/tarball/master" class="tar">tar</a><a href="https://github.com/JayWee/GertboardTutorial/zipball/master" class="zip">zip</a><a href="" class="code">source code</a>
    <p class="name"></p>
  </div>

  
</body>
</html>
