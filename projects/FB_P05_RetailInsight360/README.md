<div align="center">

# 🛒 Retail360 | CX Analytics & Impact des Promotions

> *"Le Black Friday génère du chiffre. Mais à quel prix pour la relation client ?"*

![MariaDB](https://img.shields.io/badge/-MariaDB-003545?style=for-the-badge&logo=mariadb&logoColor=white)
![SQL](https://img.shields.io/badge/-SQL-4479A1?style=for-the-badge&logo=postgresql&logoColor=white)
![CX](https://img.shields.io/badge/-Customer_Experience-FF6B6B?style=for-the-badge)
![Analytics](https://img.shields.io/badge/-Analytics-10B981?style=for-the-badge)

</div>

---

## 🎯 The Hook

**Retail360** m'a confronté à un paradoxe business classique : les **promotions agressives** boostent le CA à court terme mais **érodent la fidélité client**. Mon analyse SQL a permis de **quantifier ce coût caché**.

> 💡 **Killer Fact** : Preuve du **coût financier des promotions agressives** (Black Friday)

---

## 💼 The Challenge (Business Problem)

> Comment mesurer l'impact réel des campagnes promotionnelles sur la satisfaction et la rétention client ?

Le paradoxe identifié :
- **Pic de ventes** pendant le Black Friday (+180%)
- **Chute de la satisfaction** dans les 30 jours suivants (-22 pts NPS)
- **Augmentation des retours** et réclamations (+45%)

---

## 🛠️ The Solution (Technical Hard Skills)

```
📦 Stack Technique
├── MariaDB / MySQL
│   ├── Jointures complexes (5+ tables)
│   ├── Window Functions (LAG, LEAD)
│   ├── CTEs récursives
│   └── Agrégations temporelles
├── SQL Avancé
│   ├── Sous-requêtes corrélées
│   └── Optimisation de requêtes
├── Analyse de cohortes
└── Modélisation relationnelle
```

### Architecture de la Base de Données

```
┌─────────────┐     ┌─────────────┐     ┌─────────────┐
│  Customers  │────▶│   Orders    │────▶│  Products   │
└─────────────┘     └─────────────┘     └─────────────┘
       │                   │
       ▼                   ▼
┌─────────────┐     ┌─────────────┐
│   Reviews   │     │  Promos     │
└─────────────┘     └─────────────┘
```

---

## 💡 Insights & Impact

### 🔥 The Black Friday Cliff

> *"Un client acquis en promotion coûte 2.3x plus cher à fidéliser qu'un client organique."*

Mon analyse a révélé le **"36-Month Cliff"** :

> **"Les clients acquis lors de promotions majeures ont un taux de churn 36% supérieur à 3 ans."**

### 🔍 L'Angle Comportemental : Le Paradoxe de la Gratification Instantanée

En psychologie comportementale, la **promotion crée une attente de récompense** :

- Le client s'habitue au **prix réduit** comme norme
- L'achat au **prix normal** devient une "perte perçue"
- La **fidélité émotionnelle** ne se construit pas sur la transaction

### 📊 Métriques Clés Découvertes

| Segment | LTV 3 ans | Coût Acquisition | ROI |
|:--------|:----------|:-----------------|:----|
| Clients Organiques | 847€ | 45€ | 18.8x |
| Clients Black Friday | 412€ | 38€ | 10.8x |
| **Delta** | **-51%** | -16% | **-42%** |

---

## 📁 Deliverables

| Document | Description |
|:---------|:------------|
| [📄 Expression du Besoin](./docs/BARDET_Flavien_1_expression_%20besoin_022025.pdf) | Cadrage projet |
| [📊 Présentation](./docs/BARDET_Flavien_2_presentation_022025.pptx) | Slides stratégiques |
| [📋 Rapport SQL](./docs/BARDET_Flavien_3_rapport_%20analyse_SQL_022025.docx) | Requêtes et analyses |
| [🖼️ Captures](./docs/BARDET_Flavien_4_captures_%20%C3%A9cran_022025.pdf) | Preuves visuelles |
| [🗺️ Schéma BDD](./assets/BARDET_Flavien_5_sch%C3%A9ma_%20BDD_022025.png) | Modèle relationnel |

---

<div align="center">

**[← Retour au Portfolio](../README.md)**

</div>
