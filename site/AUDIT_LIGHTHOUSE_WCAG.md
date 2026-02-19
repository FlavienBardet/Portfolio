# Audit Lighthouse & WCAG AA — Corrections appliquées

**Objectif :** Performance, Accessibility, Best Practices, SEO > 90 — Conformité WCAG AA.

**Pages auditées :** `index.html`, `livrables.html`, `veille-deep-research.html`.

---

## Exécuter Lighthouse (sur ta machine)

**Prérequis :** Node.js, npm et **Chrome** (ou Chromium) installés. Ensuite :

```bash
# Installation globale (une fois)
npm install -g lighthouse

# Audits (remplacer par l’URL de ton site en ligne ou un serveur local)
lighthouse https://flavienbardet.github.io/Portfolio/ --output html --output-path ./audit-index.html --chrome-flags="--headless"
lighthouse https://flavienbardet.github.io/Portfolio/livrables.html --output html --output-path ./audit-livrables.html --chrome-flags="--headless"
lighthouse https://flavienbardet.github.io/Portfolio/veille-deep-research.html --output html --output-path ./audit-veille.html --chrome-flags="--headless"
```

Ouvre les fichiers `audit-*.html` dans un navigateur pour voir les scores et les recommandations.

---

## Scores Lighthouse (audit du site en ligne)

*Dernier audit : exécution Lighthouse CLI sur https://flavienbardet.github.io/Portfolio/*

| Page              | Métrique        | Avant | Après  |
|-------------------|-----------------|-------|--------|
| index.html        | Performance     | -     | **39** |
|                   | Accessibility   | -     | **93** |
|                   | Best Practices  | -     | **96** |
|                   | SEO             | -     | **100** |
| livrables.html    | Performance     | -     | **32** |
|                   | Accessibility   | -     | **95** |
|                   | Best Practices  | -     | **96** |
|                   | SEO             | -     | **100** |
| veille-deep-research.html | Performance     | -     | **44** |
|                   | Accessibility   | -     | **92** |
|                   | Best Practices  | -     | **96** |
|                   | SEO             | -     | **100** |

**Résumé :** Accessibility (92–95), Best Practices (96) et SEO (100) atteignent ou dépassent 90 sur toutes les pages. La **Performance** (32–44) reste en dessous de 90 (réseau, CDN, poids des polices/scripts) ; pistes : réduire le JS/CSS bloquants, précharger les polices, optimiser les images (WebP, dimensions).

---

## Liste des corrections appliquées

### Performance
- **`loading="lazy"`** ajouté sur toutes les images qui ne l’avaient pas :
  - **index.html :** `photoprofil.jpg`, `projet-vanguard.png`, image Unsplash (Bottleneck), `AI360image.png`, `projet9image.png`. Les autres avaient déjà `loading="lazy"`.
  - **livrables.html** et **veille-deep-research.html** : images déjà en `loading="lazy"` ou sans balise `<img>`.
- **Google Fonts** : `display=swap` déjà présent dans l’URL des polices (toutes les pages).
- Ressources externes (Tailwind, Lucide, marked) déjà en **HTTPS**.

### Accessibilité (WCAG AA)
- **Boutons avec label / aria-label :**
  - **index.html :** Boutons « Expériences » / « Formations » : `type="button"`, `aria-label` explicites, `aria-pressed` géré dans `switchLogTab()` ; icônes avec `aria-hidden="true"`. Sélecteur de langue (FR/EN) : `<div>` remplacé par `<button type="button">` avec `aria-label="Choisir la langue : Français ou English"`.
  - **livrables.html :** Bouton « Voir le planning » : `type="button"` et `aria-label="Afficher le diagramme de Gantt et le rétroplanning"`. Bouton de fermeture (X) du modal : `aria-label="Fermer le planning"`, icône avec `aria-hidden="true"`.
- **Liens logo / accueil :** Liens « FB.» en nav et footer avec `aria-label="Retour en haut de page - Accueil"`.
- **Liens icônes (footer) :** Déjà avec `aria-label` (LinkedIn, GitHub, Email) sur les trois pages.
- **Contrastes :** Aucun changement (slate-400 sur fond sombre déjà conforme ; à valider dans le rapport Lighthouse « Contrast »).

### Best Practices
- Aucune ressource chargée en HTTP (scripts et liens en HTTPS). Référence `http://www.w3.org/2000/svg` dans les data URI SVG : namespace XML uniquement, pas de chargement réseau.

### SEO
- **Meta description** ajoutée sur chaque page :
  - **index.html :** `Portfolio de Flavien Bardet, Lead Data Analyst & AI Engineer en alternance. Expert en diagnostic neurodéveloppemental reconverti à l'IA, projets Data Science, Power BI et GenAI.`
  - **livrables.html :** `Livrables du projet Aéroworld : cahier des charges, veille technologique, rétroplanning Gantt et démonstration technique du portfolio Data Analyst.`
  - **veille-deep-research.html :** `Veille technologique : Deep Research, IA agentique et outils d'analyse. Synthèse et ressources pour Data Analysts et Product Managers.`
- **Titre** : Chaque page avait déjà un `<title>` unique et descriptif ; inchangé.

---

## Vérifications manuelles recommandées

1. **Lighthouse** : Exécuter les 3 commandes ci-dessus après déploiement et noter les 4 scores par page dans le tableau.
2. **Contraste** : Dans le rapport Lighthouse (Accessibility), vérifier qu’aucun échec « Contrast » ne reste ; ajuster les couleurs (ex. `text-slate-400`) si besoin.
3. **Navigation clavier** : Tab sur tous les boutons et liens (y compris toggle FR/EN, onglets Expériences/Formations, bouton fermer planning) et vérifier qu’ils sont focusables et utilisables.
4. **Lecteur d’écran** : Tester rapidement avec NVDA ou VoiceOver que les aria-label et les boutons sont annoncés correctement.

Une fois Lighthouse relancé, remplir le tableau « Après » dans ce fichier pour documenter les scores finaux.

---

## Commande pour valider le score Accessibilité (index.html)

Après les corrections WCAG, relance l’audit dans ton terminal :

```bash
npx lighthouse https://flavienbardet.github.io/Portfolio/ --output=html --output-path=./audit-index.html --chrome-flags="--headless"
```

Ou en JSON pour extraire les scores :

```bash
npx lighthouse https://flavienbardet.github.io/Portfolio/ --output=json --output-path=./audit-index.json --chrome-flags="--headless"
```
