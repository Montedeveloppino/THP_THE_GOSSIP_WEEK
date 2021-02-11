
<h1>The Gossip Project in Rails</h1>

Projet avec Rails et CRUD.

This applicaiton is made with love by Youssef Annabi and Théo Cazenave-coupet with the smalest of contributions fron Yann rannou and Basil Albader.

Ruby/rails version

    ruby -v: 2.7.1

    rails -v: 5.2.3

    postgres --version: 13.1

<h2>Configuration</h2>

    git clone https://github.com/Montedeveloppino/THP_THE_GOSSIP_WEEK/edit/master/README.md
    cd THP_THE_GOSSIP_WEEK
    bundle install
    faire un rails db:create pour la BDD
    faire un rails db:migrate pour créer les tables de la BDD
    faire un rails db:seed pour alimenter la BDD avec un jeu d'essai.

<h2>How to run the test suite</h2>

    Lancer le serveur avec $ rails server
    Dans le navigateur, == http://localhost:3000 ==

<h2>Les fonctionnalités</h2>

<h3>L'application permet:</h3>

    Afficher les potins en card Bootstrap avec l'item du menu Home: l'auteur et le titre du ragôt. 
    Chaque card permet d'avoir le profil utilisateur et le contenu du potin.
    Team affiche les membres de la team Gossip.
    Contact affiche les contacts pour nous joindre.
    Tu peux ajouter un nouveau potin et l'éditer avec mise en oeuvre du CRUD de rails.
    Une page cachée est accessible : en saisissant l'URI suivante: http://localhost:3000/welcome/votre_nom
