# my_netflix_list

### Wichtig
Source Code zur jeweiligen Seite der App findest du unter /lib

### Darstellung

Die Ordner ios/android/web sind für übertragung in die jeweiligen Betriebsysteme da. 
Im assets findet man die genutzten Designs der App.

### complete_profile
path: my_netflix_list/lib/complete_profile/complete_profile_widget.dart

beinhaltet die Seite "Profil vervollständigen/bearbeiten". Die Seite erscheint sobald man sich registriert, man wird ausgefordert seine Daten zu vervollständigen. Des Weiteren kann sie übers Profil ausgerufen werden, wenn man seine Daten überarbeiten möchte. Dateneingabe erfolgt mit per Textfeld und Radiobutton. 

### find_series
path: my_netflix_list/lib/find_series/find_series_widget.dart

beinhaltet die Seite "Filme&Serien suchen", diese verfügt über eine Suchzeile um gewünschte Filme/Serien zu suchen. Die Suchergebnisse werden untereinander in einzelnen Box Widgets angezeigt. Die angezeigt Filme/Serien können dann angeklickt werden und man wird auf die Details der Serie weitergeleitet. 

### flutter_flow
path: my_netflix_list/lib/flutter_flow/...

jede Klasse in dem Ordner beinhaltet jeweils das Design zu den jeweiligen Buttons/Widgets/etc., so sind sie einmal definiert und müssen nur noch importiert werden dort wo man sie haben möchte. Zum Beispiel das YouTube Widget auf dem Homescreen ist in flutter_flow_youtube_player.dart definiert und muss dann nur noch in der Homescreen Klasse Import werden.

### home_page
path: my_netflix_list/lib/home_page/home_page_widget.dart

der Homescreen ist die am meisten benutzte Klasse, denn bei jedem Start der App wird man hier draufgeleitet. Auf dem Homescreen werden in Abschnitten verschiedene News/Update und ein Trailer angezeigt. Dieses YouTube Widget ist wie vorher schon beschrieben von der flutter_flow_youtube_player.dart Import und muss nur an die gewünschte Stelle gesetzt werden. Des Weiteren kann man von hier zu den anderen Seiten der App navigieren. 

### login_page
path: my_netflix_list/lib/login_page/login_page_widget.dart

beinhaltet die "Login Page", diese hat zwei Eingabefelder wo jeweils E-Mail und Passwort eingeben werden können und einen Button zum Absenden der Daten. Bei erfolgreichem Login wird man auf den Homescreen weitergeleitet. 

### my_list
path: my_netflix_list/lib/my_list/my_list_widget.dart

die "Meine Liste" Seite ist die Ausschlagende Funktion der App. Auf der Seite kann man seine Liste erstellen und anschauen. Die eingefügten Filme/Serien werden in Box Widget angezeigt. Alle eingefügten Filme/Serien werden hier angezeigt und können bewertet/bearbeitet sowie gelöscht werden. Zu guter Letzt können unten rechts über ein Button mit einem Kreuz neue Filme/Serien hinzufügt werden, hier wird man auf die "Filme&Serien suchen" (my_netflix_list/lib/find_series/find_series_widget.dart) Seite weitergeleitet.

### register_page
path: my_netflix_list/lib/register_page/register_page_widget.dart

die "Register Page" ist wie "Login Page" aufgebaut nur das man hier noch ein extra Textfeld hat, um sein Passwort zu bestätigen. Sobald man sich registriert hat, wird man erstmal auf die "Profil vervollständigen/bearbeiten" (my_netflix_list/lib/complete_profile/complete_profile_widget.dart) geschickt, dort gibt man die restlichen Daten ein und voilà man kann loslegen.

### score_details
path: my_netflix_list/lib/score_details/score_details_widget.dart

sobald man ein Film/Serien bewertet möchte wird man auf die Seite kommen, diese beinhaltet den Ausgewählten Titel sowie einen Schieber zum Auswählen der gesehenen Episoden. Das Bewerten Funktion über ein Sterne System, man kann einfach die gewünschte Sterneanzahl anklicken. Das Datum sowie die Uhrzeit und die eingegeben Bewertung wird gespeichert so bald auf Speichern klickt. 

### serie
path: my_netflix_list/lib/serie/serie_widget.dart

die Klasse "Serie" war am aufwendigsten. Sie zeigt das Cover desausgeählten Titel sowie Details dazu. Also Release, Episodenanzahl, Handlung, 

### main 
path: my_netflix_list/lib/main.dart

wie die Methode schon verrät, buildet diese das Programm und verknüpft die jeweiligen Klassen. So wie immer!
