# Design System — Portfolio Aéroworld

> Référence unique pour la charte graphique "Bio-Digital".  
> **À respecter pour toute modification** du site (HTML/CSS/JS).

**Dernière mise à jour** : Février 2026  
**Concept** : Alliance rigueur Data (froid/structuré) et dimension psychologique (organique/humain).

---

## 1. Palette de couleurs

### 1.1 Couleurs de fond

| Nom           | Classe / usage        | Hex / valeur                    | Usage                    |
|---------------|------------------------|----------------------------------|---------------------------|
| Background    | `bg-slate-950`         | `#020617`                        | Fond principal page      |
| Surface       | `bg-slate-900`         | `#0f172a`                        | Surfaces secondaires      |
| Card dark     | `bg-[#0b0f19]` / config `slate-1000` | `#0b0f19`              | Fond cartes projets       |
| Slate 850     | (theme extend)         | `#151e2e`                        | Variante surface          |
| Glass         | `.glass-card`          | `rgba(30, 41, 59, 0.35)`         | Cartes glassmorphism     |
| Glass hover   | —                      | `rgba(30, 41, 59, 0.55)`         | État hover glass         |

### 1.2 Accents "Neon" (theme Tailwind)

Définis dans `tailwind.config` sous `theme.extend.colors.neon` :

| Nom     | Classe / variable | Hex       | Usage principal                |
|---------|--------------------|-----------|---------------------------------|
| Cyan    | `neon-cyan` / `cyan-400`–`500` | `#06b6d4` | Product, Strategy, liens secondaires |
| Emerald | `neon-emerald` / `emerald-400`–`500` | `#10b981` | CTA, succès, KPIs, focus       |
| Purple  | `neon-purple` / `purple-400`–`500`   | `#8b5cf6` | Leadership, soft skills, recherche |
| Pink    | `neon-pink` / `pink-400`–`500`      | `#ec4899` | Optionnel, accents ponctuels   |

### 1.3 Texte

| Rôle        | Classe(s)              | Couleur typique | Usage                    |
|-------------|------------------------|------------------|---------------------------|
| Titres      | `text-white`           | `#ffffff`        | H1, H2, noms de cartes    |
| Corps       | `text-slate-300`       | `#cbd5e1`        | Paragraphes, descriptions |
| Secondaire  | `text-slate-400`       | `#94a3b8`        | Sous-titres, labels       |
| Tertiaire   | `text-slate-500`       | `#64748b`        | Métadonnées, copyright    |
| Discret     | `text-slate-600`       | —                | Texte très secondaire     |

### 1.4 Bordures

| Contexte     | Valeur / classe                    | Usage                    |
|--------------|-------------------------------------|---------------------------|
| Default      | `border-white/10` ou `rgba(255,255,255,0.08)` | Cartes, nav, séparateurs |
| Hover        | `border-white/20` ou `rgba(255,255,255,0.2)`  | État hover                |
| Accent cyan  | `border-cyan-400/30` à `border-cyan-500/50`   | Bouton CV, liens          |
| Accent emerald | `border-emerald-500/50`                    | CTA, focus                |
| Accent purple | `border-purple-500/20` à `border-purple-500/40` | Piliers skills, timeline  |

### 1.5 États sémantiques

| État   | Classe (texte)      | Usage          |
|--------|---------------------|----------------|
| Succès | `text-emerald-400`  | Statut, validation |
| Info   | `text-cyan-400`     | Information    |
| Warning| `text-amber-400` / `text-yellow-400` | Alerte, stat "Open" (pastille) |
| Erreur | `text-red-400`      | Erreur         |

### 1.6 Sélection et focus

- **Sélection** : `selection:bg-neon-cyan selection:text-white` (sur `body`).
- **Focus** : conserver un contour visible (accessibilité), cohérent avec la charte (ex. ring cyan ou emerald).

---

## 2. Typographie

### 2.1 Polices

| Rôle   | Police          | Poids utilisés     | Import / config                    |
|--------|-----------------|--------------------|------------------------------------|
| Sans   | **Inter**       | 300, 400, 500, 600, 700, 800 | `font-sans` (theme), Google Fonts |
| Mono   | **JetBrains Mono** | 400, 500, 700   | `font-mono` (theme), Google Fonts  |

Lien Google Fonts (à garder dans le `<head>`) :

```html
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&family=JetBrains+Mono:wght@400;500;700&display=swap" rel="stylesheet">
```

### 2.2 Hiérarchie

| Élément        | Classes Tailwind typiques                    | Usage                    |
|----------------|-----------------------------------------------|---------------------------|
| Hero titre     | `text-5xl lg:text-6xl font-extrabold tracking-tight` | Titre principal hero   |
| Section titre  | `text-5xl md:text-7xl font-bold tracking-tighter`   | "Mes compétences", "Mes projets" |
| CTA / bloc     | `text-4xl md:text-5xl lg:text-6xl font-bold`  | Titre CTA pre-footer     |
| Carte titre    | `text-3xl md:text-4xl font-bold`              | Titre de carte projet    |
| Sous-titre section | `font-mono text-xs md:text-sm tracking-[0.15em] uppercase font-bold text-slate-500` ou `text-emerald-400` | Ligne sous le titre de section |
| Carte sous-titre | `text-base font-medium text-slate-500` ou classe custom `.project-card-subtitle` | Sous-titre de projet |
| Corps          | `text-lg` ou `text-base`, `leading-relaxed`   | Paragraphes              |
| Corps léger    | `text-lg font-light`                          | Hero, About               |
| Small / label  | `text-sm` ou `text-xs`                        | Labels, dates, tags      |
| Tech / code    | `font-mono text-xs uppercase tracking-wider`   | Tech tags, labels pills   |

### 2.3 Règles

- **Gradient sur titre** : `text-transparent bg-clip-text bg-gradient-to-r from-emerald-400 to-cyan-400` (ou `via-cyan-400` pour 3 couleurs).
- **Glow texte** : `drop-shadow-[0_0_8px_rgba(52,211,153,0.6)]` (adapter couleur selon contexte).
- Pas de police tierce non définie dans ce design system.

---

## 3. Espacements

### 3.1 Échelle (Tailwind)

Utiliser l’échelle Tailwind par défaut : `0`, `1`, `2`, `3`, `4`, `5`, `6`, `8`, `10`, `12`, `16`, `20`, `24`, `32`, etc. (en multiples de 4 pour la cohérence).

| Token  | Valeur  | Usage typique        |
|--------|---------|----------------------|
| `p-2`  | 8px     | Nav capsule padding  |
| `p-4`  | 16px    | Padding cartes, sections |
| `p-6` / `p-8` | 24px / 32px | Cartes larges, CTA |
| `gap-2` à `gap-4` | 8–16px | Entre tags, icône+texte |
| `gap-6` / `gap-8` | 24px / 32px | Grilles, blocs section |
| `mb-6` / `mb-8` / `mb-10` | 24–40px | Marges sous titres |
| `mb-24` / `mb-32` | 96px / 128px | Espace entre sections majeures |

### 3.2 Container

- **Largeur max** : `max-w-7xl` pour le contenu principal ; `max-w-4xl` pour la nav capsule.
- **Padding horizontal** : `px-4 sm:px-6 lg:px-8`.
- **Main (sous nav fixe)** : `pt-40 pb-16` (ou équivalent pour laisser la place à la nav).

### 3.3 Sections

- **Espacement vertical entre sections** : `mb-32` ou `mb-24` pour les grands blocs ; `pt-16 pb-4` pour les en-têtes de section avec ancres (`scroll-mt-32` pour compenser la nav fixe).
- **Grilles** : `gap-6` ou `gap-8` pour les bento / cartes ; `gap-12` pour hero deux colonnes.

### 3.4 Scroll & ancres

- `html` : `scroll-smooth` et `scroll-padding-top: 120px` (ou 100px sur les sous-pages) pour l’ancrage avec nav fixe.

---

## 4. Composants et variantes

### 4.1 Navigation (capsule)

- **Conteneur** : `fixed top-6 left-0 right-0 z-50 flex justify-center px-4`.
- **Capsule** : `bg-slate-950/70 backdrop-blur-xl border border-white/10 rounded-full p-2 pl-6 pr-2 shadow-2xl shadow-black/20 max-w-4xl w-full`.
- **Liens** : `px-5 py-2.5 text-sm font-medium text-slate-400 hover:text-white rounded-full hover:bg-white/5 hover:shadow-[0_0_15px_rgba(255,255,255,0.15)]`.
- **Logo** : `text-xl font-bold text-white` ; point : `text-emerald-400 drop-shadow-[0_0_8px_rgba(52,211,153,0.6)]`.
- **Bouton CV** : `px-6 py-2.5 rounded-full bg-slate-900/50 border border-cyan-400/30 text-cyan-400 text-sm font-medium hover:bg-cyan-400/10 hover:shadow-[0_0_20px_rgba(34,211,238,0.4)] hover:border-cyan-400/80`.
- **Page active** (ex. Livrables) : `text-emerald-400 bg-emerald-500/10` sur le lien concerné.

### 4.2 Glass card (standard)

Classe CSS à inclure dans chaque page qui l’utilise :

```css
.glass-card {
    background: rgba(30, 41, 59, 0.35);
    backdrop-filter: blur(16px);
    -webkit-backdrop-filter: blur(16px);
    border: 1px solid rgba(255, 255, 255, 0.08);
    box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1), inset 0 1px 0 0 rgba(255, 255, 255, 0.05);
    transition: all 0.4s cubic-bezier(0.25, 0.1, 0.25, 1.0);
}
.glass-card:hover {
    background: rgba(30, 41, 59, 0.55);
    border-color: rgba(255, 255, 255, 0.2);
    transform: translateY(-4px);
    box-shadow: 0 25px 50px -12px rgba(6, 182, 212, 0.15), inset 0 1px 0 0 rgba(255, 255, 255, 0.15);
}
```

- **Variantes** : sur certaines pages (ex. veille), le hover peut ne pas appliquer `transform` ; à harmoniser si on veut un comportement unique.
- **Rayon** : `rounded-2xl` ou `rounded-[2rem]` / `rounded-[2.5rem]` pour les grandes cartes.

### 4.3 Tech tag

- **Classe de base** : `.tech-tag` (CSS) + couleurs Tailwind.
- **Style** : `inline-flex`, `padding: 0.6rem 1.4rem`, `border-radius: 9999px`, `font-size: 0.75rem`, `font-weight: 700`, `letter-spacing: 0.05em`, `text-transform: uppercase`, `font-family: JetBrains Mono`, bordure et fond sombres, hover léger (border + translateY(-2px)).

Exemple HTML :

```html
<span class="tech-tag text-emerald-400 border-emerald-500/20">PYTHON</span>
<span class="tech-tag text-cyan-400 border-cyan-500/20">POWER BI</span>
<span class="tech-tag text-purple-400 border-purple-500/20">RGPD</span>
<span class="tech-tag text-orange-400 border-orange-500/20">DAX</span>
```

### 4.4 Boutons

**CTA principal (emerald)**  
`px-8 py-4 rounded-xl bg-emerald-500/10 border border-emerald-500/50 text-emerald-400 font-bold transition-all shadow-[0_0_20px_rgba(16,185,129,0.15)] hover:shadow-[0_0_30px_rgba(16,185,129,0.3)] hover:bg-emerald-500/20`

**Bouton blanc (primaire carte)**  
`px-6 py-3 rounded-full bg-white text-slate-950 text-sm font-bold hover:bg-emerald-400` (ou `hover:bg-cyan-400` / `hover:bg-purple-400` selon la carte) `transition-all duration-300 shadow-[0_0_20px_rgba(255,255,255,0.1)]`

**Bouton outline (GitHub / secondaire)**  
`px-6 py-3 rounded-full bg-slate-950 border border-blue-500/50 text-blue-400 text-sm font-bold hover:bg-blue-500/10 hover:border-blue-400 hover:shadow-[0_0_20px_rgba(59,130,246,0.3)] transition-all duration-300`

**Taille** : préférer `px-6 py-3` pour les boutons dans les cartes, `px-8 py-4` pour le CTA principal.

### 4.5 Carte projet

- **Wrapper** : `glass-card col-span-full overflow-hidden rounded-[2.5rem] bg-[#0b0f19] p-6 lg:p-8`.
- **Layout** : `grid lg:grid-cols-2 items-center gap-6 lg:gap-8` ; alterner l’ordre image/contenu avec `order-1` / `order-2` et `lg:order-1` / `lg:order-2`.
- **Pastille** : `w-2.5 h-2.5 rounded-full bg-emerald-500 shadow-[0_0_10px_rgba(16,185,129,0.6)]` (ou cyan/purple selon le projet).
- **Label** : `text-emerald-500 font-mono text-xs font-bold tracking-[0.2em] uppercase` (adapter la couleur).
- **Titre** : `text-3xl md:text-4xl font-bold text-white` (classe `.project-card-title` si utilisée).
- **Sous-titre** : `text-slate-500 text-base font-medium` ou `.project-card-subtitle`.
- **Description** : `text-slate-400 text-sm leading-relaxed font-light max-w-lg` (éventuellement `.project-card-description` avec `text-align: justify`).
- **Image** : conteneur `aspect-[4/3] rounded-2xl border border-white/5 bg-slate-900/50`, overlay `bg-gradient-to-t from-[#0b0f19]/60 via-transparent to-transparent`, image avec `group-hover/image:scale-[1.03] transition-transform duration-700`.
- **Blur décoratif** : `absolute inset-0 bg-neon-cyan/10 blur-[80px] rounded-full opacity-40 group-hover/image:opacity-60` (couleur selon carte).

### 4.6 En-tête de section

- **Titre** : `text-5xl md:text-7xl font-bold text-white tracking-tighter` avec mot accent en `text-emerald-400` ou gradient.
- **Ligne** : `h-1 w-24 bg-emerald-500 rounded-full shadow-[0_0_15px_rgba(16,185,129,0.8)]`.
- **Sous-titre** : `text-emerald-400 font-mono text-sm md:text-base tracking-[0.15em] uppercase font-bold`.

### 4.7 Skill item (dashboard compétences)

- **Conteneur** : `.skill-item` (flex, padding, fond `rgba(15,23,42,0.6)`, bordure, `border-radius: 12px`).
- **Jauge** : `.skill-gauge` (barre) + `.skill-fill` avec largeur en %.
- **Variantes couleur** : `.skill-fill--emerald`, `.skill-fill--cyan`, `.skill-fill--purple` (dégradés + box-shadow cohérents avec la palette).

### 4.8 Timeline (parcours)

- **Toggle** : pills dans un conteneur `bg-slate-900/80 rounded-full border border-white/10` ; bouton actif `bg-white text-slate-950 shadow-lg`, inactif `text-slate-400 hover:text-white`.
- **Ligne** : `absolute left-4 md:left-6 top-0 bottom-0 w-px bg-gradient-to-b from-slate-800 via-emerald-900/50 to-slate-800`.
- **Point** : `w-3 h-3 rounded-full border-2 border-slate-900` + couleur (ex. `bg-purple-500`) + `shadow-[0_0_15px_rgba(...,0.8)]` au hover.
- **Carte** : `glass-card rounded-[2rem] p-6 lg:p-8` avec hover `hover:border-{color}-500/30`.
- **Avatar** : `w-14 h-14 rounded-2xl` + couleur de fond (ex. `bg-purple-600`) + lettre ou icône Lucide.
- **Pill statut** : `px-3 py-1 rounded-full bg-emerald-500/20 text-emerald-400 text-xs font-bold` (ex. "Actuel", "Certification").

### 4.9 Footer

- **Conteneur** : `bg-slate-950 border-t border-slate-800 py-12`, `max-w-7xl mx-auto px-6`.
- **Logo** : même style que la nav, `text-emerald-500` pour le point.
- **Liens** : `text-slate-400 hover:text-emerald-400 hover:drop-shadow-[0_0_8px_rgba(16,185,129,0.5)]`.
- **Icônes sociales** : `text-slate-500 hover:text-white` (ou `hover:text-emerald-400` pour l’email), `aria-label` obligatoire (LinkedIn, GitHub, Email).
- **Légal** : `text-xs text-slate-600 hover:text-slate-400`.

### 4.10 CTA pre-footer

- **Conteneur** : `glass-card rounded-[2.5rem] p-12 lg:p-16 bg-slate-900/50 border border-slate-700`.
- **Titre** : gradient emerald → cyan sur la deuxième ligne.
- **Bouton** : même style que le CTA principal emerald ; icône avec `group-hover:translate-x-1`.

### 4.11 Fonds et effets globaux

- **Noise** : `.bg-noise` en fixed, couvre toute la page, `opacity: 0.035`, texture SVG (fractalNoise).
- **Blobs** : `fixed inset-0 overflow-hidden pointer-events-none z-0` avec divs en `bg-neon-purple/20`, `bg-neon-cyan/20`, etc., `rounded-full mix-blend-screen filter blur-[120px] opacity-25 animate-blob`.
- **Body** : `bg-slate-950 text-slate-300 font-sans min-h-screen selection:bg-neon-cyan selection:text-white overflow-x-hidden`.

---

## 5. Conventions de code

### 5.1 Fichiers et dossiers

- **Fichiers** : kebab-case (ex. `rag-assistant.html`, `veille-deep-research.html`).
- **Dossiers** : kebab-case ou PascalCase pour les dossiers projets (ex. `projects/FB_P10_Project-Vanguard`).
- **Un fichier HTML par page** ; CSS et JS inline dans la page (pas de fichiers externes, sauf contrainte projet).

### 5.2 HTML

- **Indentation** : 4 espaces.
- **Balises sémantiques** : `<header>`, `<main>`, `<footer>`, `<nav>`, `<section>`, `<article>`.
- **Liens** : `<a href="...">` avec `href` obligatoire (pas de `href="#"` pour des actions non implémentées ; utiliser un vrai lien ou un `<button>` si besoin).
- **Images** : `<img>` avec `alt` descriptif.
- **Boutons** : `<button>` pour les actions (ex. toggle langue, toggle timeline) ; `<a>` pour la navigation.

### 5.3 CSS

- **Classes** : kebab-case (ex. `glass-card`, `project-card-title`).
- **IDs** : camelCase (ex. `log-experience`, `tab-log-exp`).
- **Préférer** les classes Tailwind aux propriétés custom quand c’est possible ; sinon, définir des classes réutilisables dans `<style>`.
- **Transitions** : `transition-all duration-300` (ou 400) ; éviter les animations trop vives ; privilégier `ease` ou `cubic-bezier(0.25, 0.1, 0.25, 1)`.

### 5.4 JavaScript

- **Style** : camelCase pour variables et fonctions (ex. `switchLogTab`, `applyTranslations`, `currentLang`).
- **Fonctions** : nommer avec un verbe (ex. `toggleLanguage`, `updateLangToggleUI`).
- **Commentaires** : JSDoc ou commentaires courts pour la logique non triviale (ex. i18n, tabs).
- **Pas de** `localStorage` / `sessionStorage` (contrainte projet).
- **Pas de** framework JS (React, Vue, Angular).

### 5.5 Tailwind

- **Config** : `tailwind.config` dans un `<script>` en tête de page ; garder la même extension de thème (couleurs `slate` 850/900/950/1000, `neon`, `card`, `fontFamily`, `animation`/`keyframes`) sur toutes les pages pour cohérence.
- **Breakpoints** : mobile d’abord, puis `sm:`, `md:`, `lg:`.
- **Couleurs** : rester dans la palette du design system (slate, neon, emerald, cyan, purple, etc.).

### 5.6 Accessibilité

- **Contraste** : viser WCAG AA (texte slate sur fond slate-950 déjà conforme).
- **Focus** : ne pas supprimer les outlines ; les styliser si besoin (ring cyan/emerald).
- **Icônes seules** : `aria-label` sur les liens (ex. LinkedIn, GitHub, Email).
- **Navigation** : landmarks sémantiques ; si menu mobile, gérer `aria-expanded` / `aria-controls` pour les toggles.

### 5.7 Performance

- **Images** : `loading="lazy"` quand approprié.
- **Animations** : privilégier `transform` et `opacity`.
- Pas de scripts ou polices inutiles (ex. retirer Marked si non utilisé).

---

## Récap des règles d’or

1. Toujours utiliser la palette définie (pas de couleurs hors charte).
2. Glassmorphism (`.glass-card`) pour les cartes importantes ; hover avec `translateY(-4px)` et shadow renforcée.
3. Emerald pour les CTA et le succès ; cyan pour Product/Strategy ; purple pour Leadership/Recherche.
4. Typo : Inter (sans), JetBrains Mono (tech/code).
5. Animations subtiles, pas de flash ; transitions 300–400 ms.
6. Un seul fichier HTML par page, CSS/JS inline ; pas de build sauf décision explicite.
7. Fichiers en kebab-case ; classes CSS en kebab-case ; IDs en camelCase ; JS en camelCase avec verbes pour les fonctions.

---

*Document de référence — Portfolio Bio-Digital Aéroworld*
