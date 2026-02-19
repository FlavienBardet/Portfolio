# 🗺️ Site Map - Portfolio Aéroworld

> Cartographie de l'architecture du projet
> Dernière mise à jour : 26 Janvier 2026
> Version : 2.0 (Post-Refactorisation)

---

## 📁 Arborescence Complète

```
portfolio-aeroworld/
│
├── 📄 README.md                     # Introduction du projet
├── 📄 LICENSE                       # Licence MIT
├── 📄 .gitignore                    # Fichiers ignorés par Git
├── 📂 .github/
│   └── 📂 workflows/
│       └── 📄 deploy.yml            # CI/CD GitHub Pages
│
├── 📂 site/                         # Site web de production
│   ├── 📄 index.html                # Page principale (Portfolio)
│   ├── 📄 livrables.html            # Page des livrables Aéroworld
│   ├── 📄 veille-deep-research.html # Étude Deep Research & IA Agentique
│   │
│   ├── 📂 assets/                   # Ressources statiques
│   │   ├── 📂 audio/
│   │   │   └── 🎵 deep_research_audio.m4a    # Podcast NotebookLM
│   │   ├── 📂 cv/
│   │   │   └── 📄 cvflavienbardet.pdf        # CV téléchargeable
│   │   ├── 📂 data/
│   │   │   └── 📄 diagramme_gantt.pbix       # Gantt Power BI
│   │   ├── 📂 docs/
│   │   │   └── 📄 Bardet_Flavien_2_Analyses_1225.pbix  # Dashboard Vanguard
│   │   ├── 📂 images/
│   │   │   ├── 🖼️ photoprofil.jpg
│   │   │   ├── 🖼️ projet-vanguard.png
│   │   │   └── 🖼️ diagramme_gantt.png
│   │   └── 📂 pdf/
│   │       ├── 📄 cahier-des-charges-aeroworld.pdf
│   │       ├── 📄 Projet_11_Analyse_besoin.pdf
│   │       ├── 📄 article_veille.pdf
│   │       ├── 📄 guide-methodologique-powerbi.pdf
│   │       └── 📄 Bardet_Flavien_1_Présentation_1225.pdf
│   │
│   └── 📂 projects/                 # Pages de détail projets
│       ├── 📄 rag-assistant.html    # Case Study RAG Assistant
│       └── 📄 vanguard-strategy.html # Case Study Vanguard (651 lignes)
│
├── 📂 docs/                         # Documentation du projet
│   ├── 📄 site_map.md               # Ce fichier (cartographie)
│   ├── 📄 devbook.md                # Journal de développement
│   ├── 📄 project_tracking.md       # Suivi des tâches
│   ├── 📄 audit_clean.md            # Rapport d'audit
│   └── 📄 gantt_project_data.csv    # Données du Gantt
│
└── 📂 projects/                     # Archives des projets pédagogiques
    ├── 📄 README.md                 # README global Portfolio
    ├── 📄 LICENSE                   # Licence MIT
    ├── 📄 sources_projets.md        # Sources et références
    ├── 📄 DEPLOY.bat                # Script de déploiement
    │
    └── 📂 FB_P02 → FB_P10/          # Dossiers de projets
        ├── FB_P02_Strategic-Churn-Analysis/
        ├── FB_P03_SQL-Foundations/
        ├── FB_P04_DevImmediat-Privacy/
        ├── FB_P05_RetailInsight360/
        ├── FB_P06_Bottleneck-Data-Audit/
        ├── FB_P07_Sanitoral-PMO/
        ├── FB_P08_Valuation-ML/
        ├── FB_P09_Bottleneck-BI-Architecture/
        └── FB_P10_Project-Vanguard/
```

---

## 🔗 Plan de Navigation

### Pages Principales

| Page | URL | Description |
|:-----|:----|:------------|
| **Accueil** | `site/index.html` | Portfolio principal avec Hero, Skills, Projects, Timeline |
| **Livrables** | `site/livrables.html` | Documentation Projet 11 Aéroworld |
| **Veille Tech** | `site/veille-deep-research.html` | Étude Deep Research & IA Agentique |

### Pages Projets

| Projet | URL | Statut |
|:-------|:----|:-------|
| RAG Assistant | `site/projects/rag-assistant.html` | ✅ Actif |
| Vanguard Strategy | `site/projects/vanguard-strategy.html` | ✅ Complété (651 lignes) |

---

## 📎 Ressources Externes

### Liens Navbar (toutes pages)
- **Logo FB.** → `site/index.html`
- **À propos** → `site/index.html#about`
- **Compétences** → `site/index.html#skills`
- **Projets** → `site/index.html#projects`
- **Livrables** → `site/livrables.html`
- **CV** → `site/assets/cv/cvflavienbardet.pdf`

### Liens Footer (toutes pages)
- **Projets** → `site/index.html#projects`
- **Compétences** → `site/index.html#skills`
- **Parcours** → `site/index.html#experience`
- **Livrables** → `site/livrables.html`
- **LinkedIn** → https://linkedin.com/in/flavien-bardet-38649a18b/
- **GitHub** → https://github.com/FlavienBardet/Portfolio
- **Email** → issadun@gmail.com

---

## 🖼️ Assets Clés

| Ressource | Chemin | Utilisé dans |
|:----------|:-------|:-------------|
| Photo Profil | `site/assets/images/photoprofil.jpg` | index.html (Hero) |
| Projet Vanguard | `site/assets/images/projet-vanguard.png` | index.html (Projects) |
| CV PDF | `site/assets/cv/cvflavienbardet.pdf` | Navbar (toutes pages) |
| Audio Podcast | `site/assets/audio/deep_research_audio.m4a` | veille-deep-research.html |
| Cahier des Charges | `site/assets/pdf/cahier-des-charges-aeroworld.pdf` | livrables.html ✅ |
| Analyse Besoin | `site/assets/pdf/Projet_11_Analyse_besoin.pdf` | livrables.html ✅ |
| Gantt PBIX | `site/assets/data/diagramme_gantt.pbix` | livrables.html ✅ |
| Vanguard PDF | `site/assets/pdf/Bardet_Flavien_1_Présentation_1225.pdf` | vanguard-strategy.html ✅ |
| Vanguard PBIX | `site/assets/docs/Bardet_Flavien_2_Analyses_1225.pbix` | vanguard-strategy.html ✅ |

---

## ✅ Checklist de Validation

- [x] Toutes les pages utilisent le même header/footer
- [x] Liens de navigation internes fonctionnels
- [x] CV pointe vers `assets/cv/cvflavienbardet.pdf`
- [x] Photo de profil personnalisée
- [x] Liens vers livrables PDF correctement configurés
- [x] Audio player intégré sur veille-deep-research.html
- [x] Style Glassmorphism cohérent sur toutes les pages

---

## 🔄 Changelog Refactorisation

### Version 2.0 (26 Janvier 2026)
- ✅ Renommage `/github` → `/projects` (Archives projets pédagogiques)
- ✅ Suppression de 9 dossiers doublons à la racine (FB_P02-P10)
- ✅ Création de `/docs` pour centraliser la documentation
- ✅ Suppression fichiers orphelins (PDFs, backup HTML)
- ✅ Nettoyage dossier `/assets` redondant
- ✅ Mise à jour complète du site_map.md
- ✅ Structure projet clarifiée et maintenable

### Gain
- **Clarté** : Structure de projet simplifiée
- **Maintenance** : Plus de confusion entre doublons
- **Performance** : ~15-25 MB d'espace libéré

---

*Mis à jour par Claude Sonnet 4.5 - Portfolio Bio-Digital Aéroworld*
