
<h1> THP 24/10/2019 : Projet Gossip <h1>

<h2> Thème  </h2>

Allez, on va poser les bases de notre fameux Gossip Project pour le transcrire en Rails. Et comme je te l'ai expliqué, la première étape est la modélisation de sa BDD !
Le parcours utilisateur est le suivant : sur ce super réseau social, un utilisateur va s'inscrire, renseigner son prénom et nom, son mail et son age, puis il précisera sa ville avec une recherche par code postal.
Il aura ensuite toutes les fonctionnalités qui feront de cette appli une future licorne de la Bitchin'Tech :

Les utilisateurs peuvent créer des potins : "askip john est célib hihi"
Les utilisateurs, en créant des potins, peuvent mettre un ou plusieurs tags sur les potins : #romance
Les utilisateurs peuvent commenter des potins : "ahiii j'savé pa lol ptdr 💁‍♂️"
Et puisque ton appli doit respecter les standards de l'industrie, on va faire en sorte qu'il soit possible aussi de commenter des commentaires.
Les utilisateurs peuvent liker des potins.
Les utilisateurs peuvent contacter leur commères favoris en MP pour obtenir des exclus mondiales.
L'utilisateur pourra donc rechercher les potins par ville, par utilisateurs, par date (plus récent ou plus ancien), par nombre de likes, par tags, pour trouver les potins les plus croustillants.

Ça fait beaucoup ?? Oui clairement, y a de la fonctionnalité de déglingos là. Pas de panique. On va te guider ! Suis-nous.

<h2> Installation </h2>

> git clone https://github.com/140ch204/18_gossip.git
>
> cd 18_gossip
>

<h2> Vérification : </h2>

> rails c
>
> tp User.all
>
> tp City.all
>
> tp Gosssip.all
>
> tp Tag.all
>
> tp TagGossipLink.all
>


<h3> test du private message : </h3>

message1 = PrivateMessage.new

sender = User.all[1]

message1.content = "Voici mon message !"
message1.sender_id = sender.id
message1.save 

recip1 = Recipient.new
recip2 = Recipient.new
recip3 = Recipient.new

recipient1 = User.all[4]
recipient2 = User.all[2]
recipient2 = User.all[3]

recip1.user_id = recipient1.id   
recip1.private_message_id = message1.id
recip1.save

recip2.user_id = recipient2.id   
recip2.private_message_id = message1.id
recip2.save

recip3.user_id = recipient3.id   
recip3.private_message_id = message1.id
recip3.save

<p> https://www.thehackingproject.org/dashboard/courses/1/weeks/4/days/4?locale=fr </p>

<h2> Gem rajoutée </h2>

SQL, rails, table_print, Faker 

<h2> Gem rajoutée </h2>
 table_print et faker 