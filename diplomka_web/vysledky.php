<!DOCTYPE html>
<html lang="cs-cz" dir="ltr">
  <head>
    <meta charset="utf-8" />
    <?php include_once("head.html") ?>

    <title>Solanská - Synchronizace a replikace geodat v prostředí Esri platformy | Výsledky</title>
  </head>

  <body>
    <!-- uvodNavigace -->
    <?php include_once("header.html") ?>

    <!-- Nadpis -->
    <div class="sidebar-module sidebar-module-inset">
      <div class="container">
      <h1>Synchronizace a replikace geodat v prostředí Esri platformy</h1>
      <p class="blog-description">Diplomová práce Markéty Solanské, vedoucí
      práce doc. RNDr. Vilém Pechanec PhD.</p>
    </div> 
    </div> 

    <div id="first" class="vysledky">
      <div class="container">
      <!-- tělo stránky -->
      <div class="hlavni"> 
        <h2 class="page-header">Výsledky</h2>
        <p>Dnešní trend je stále více dat ukládat a ponechávat pouze v
        digitální podobě. Mnoho dokumentů už se vůbec netiskne do
        papírové podoby. Tento trend dnes podporují i elektronické
        podpisy, díky kterým je tištěná verze naprosto zbytečná. S
        přibývajícím počtem dat je však třeba řešit komplikace, které
        počítačová data přináší. Počítačoví experti řeší například kam
        ukládat tak velké množství dat, jak data aktualizovat, jak
        zabránit poškození dat ať už způsobených lidským faktorem či
        poškozením hardwaru. V připadě, že se poškodí disk, můžeme často
        během okamžiku přijít o všechna data, někdy však pro ztrátu dat
        stačí stikntou pouhé jedno tlačítko na klávesnici. Určitě už se
        vám nejednou stalo, že jste se nemohli přihlásit do svého účtu
        na internetu z důvodu přetížení serveru. Jak zabránit těmto
        komplikacím, které mohou poškodit či zcela zničit celou
        dosavadní práci nebo zrychlit celý proces práce s tady? Řešením
        velkého počtu výše uvedených problémů je replikace dat. Jedná se
        pokročilou funkci, kterou nabízí dnešní databázové servery,
        zajišťující robustnost databáze a vysokou dostupnost dat tím, že
        data zkopíruje na více serverů.</p> <p>Replikaci lze využít ve
        všech odvětvích, které pracují s daty. Výjimkou tedy není ani
        geoiformatika, která pracuje s velkým objemem dat, které navíc
        nesou informaci o geografické poloze. Z mého pohledu data
        středně velkého nebo velkého projektu je nejvhodnější ukládata
        do databáze. Nabízí nám to sofistikované uložení dat, snadné
        propojení jednotlivých vrstev, snadnou přenostitelnost dat a
        další výhody. Replikace se dá využít pro kopii dat a následnou
        aktualizaci změn. Výhodou databáze je, že se při změně jednoho
        prvku, aktualizuje v databázi pouze jeden řádek a nekopíruje se
        znovu celá databáze, což je jednoznačná výhoda oproti binárnímu
        uložení dat napřiklad ve formátu shapefile. </p><p> Replikaci
        ocení i uživatelé, kteří pracují na jednom projektu. Z hlediska
        rychlosti práce s databází je výhodnější mít databázi přimo na
        počítači, na kterém pracují, než data in-real time stahovat ze
        serveru. Po dokončení editace se data replikují prostřednictvím
        počítačové sítě nebo internetu. Dobrým příkladem využitelnosti
        replikace je také nový trend využívání offline mobilních
        aplikací v mobilních telefonech. Databáze se vždy replikuje do
        mobilního telefonu, vždy když se klient připojit na internetovou
        síť, aplikace kontroluje zda není na serveru novější verze
        databáze a pokud je, zkopíruje pouze změny, které proběhly od
        posledního stahování. (Jako příklad z geoinformatického
        prostředí bych uvedla diplomovou práci Dalibora Janáka, který
        řeší replikaci databáze lezeckých cest do mobilní aplikace.)
        Databázové systémy nabízí širokou škálu nastavitelnosti, která
        umožňuje přizpůsobit replikaci danému řešení.</p>
        </div>
      <?php include_once("footer.html") ?>
      </div> <!-- /container -->
    </div> <!-- konec těla stránky -->

    <script type="text/javascript" src="dist/js/menu.js">
    </script>

  </body>
</html>
