<div align="center">

# 🍷 Bottleneck BI | Architecture BI & Optimisation des Stocks

> *"15% de stock dormant. Invisible dans les rapports Excel. Très visible dans la trésorerie."*

![Power BI](https://img.shields.io/badge/-Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![DAX](https://img.shields.io/badge/-DAX-0078D4?style=for-the-badge)
![Data Modeling](https://img.shields.io/badge/-Star_Schema-10B981?style=for-the-badge)

</div>

---

## 🎯 The Hook

**Bottleneck** transforme des données ERP brutes en outil de pilotage financier pour un e-commerce vin. J'ai structuré un **Schéma en Étoile** optimisé et déployé un dashboard permettant d'identifier **15% de stock dormant** ("Poids Morts") et d'optimiser la marge nette.

> 💡 **Killer Fact** : Identification de **15% de stock dormant** et corrélation inverse Marge/CA en fin d'année

---

## 💼 The Challenge (Business Problem)

> Comment optimiser la trésorerie d'un e-commerce sans visibilité sur ses stocks ?

Le client gérait un catalogue de **800+ références "à l'aveugle"** :
- Pas de vision centralisée sur la **rotation des stocks**
- Incapacité à mesurer la **rentabilité réelle** des promotions
- **Immobilisation massive de trésorerie** dans des stocks dormants

---

## 🛠️ The Solution (Technical Hard Skills)

```
📦 Stack Technique
├── Power BI Desktop
│   ├── Modèle en étoile (Star Schema)
│   ├── DAX avancé (Time Intelligence)
│   └── Navigation à 3 niveaux
├── Data Modeling
│   ├── Tables de Faits (Ventes, Stocks)
│   ├── Dimensions (Produits, Temps)
│   └── Relations optimisées
└── Documentation
    └── Dictionnaire de données unifié
```

### Architecture du Modèle (Star Schema)

```
                    ┌─────────────────┐
                    │   FACT_Ventes   │
                    │   FACT_Stocks   │
                    └────────┬────────┘
           ┌─────────────────┼─────────────────┐
           ▼                 ▼                 ▼
    ┌─────────────┐   ┌─────────────┐   ┌─────────────┐
    │  DIM_Date   │   │ DIM_Produit │   │ DIM_Client  │
    └─────────────┘   └─────────────┘   └─────────────┘
```

---

## 💡 Insights & Impact

### 📊 L'Analyse de Marge : Le Piège des Promotions

> *"Vendre plus ne signifie pas gagner plus."*

L'analyse a révélé une **corrélation inverse Marge/Volume en fin d'année** :

| Période | Volume | Marge Brute | CA |
|:--------|:-------|:------------|:---|
| Octobre | 100% | 32% | Base |
| Novembre (BF) | +180% | 18% | +120% |
| Décembre | +220% | 15% | +180% |

> **"Les promotions de fin d'année détruisaient la marge globale, nécessitant un réajustement de la stratégie de pricing."**

### 🔍 L'Angle Comportemental : L'Effet Halo des Promotions

> **"Une promo qui 'marche' crée l'illusion de succès."**

Mon analyse a mis en lumière :
- Les équipes **célébraient le volume** sans regarder la marge
- L'**Effet Halo** des ventes induites masquait les ventes cannibalisées
- Le **stock dormant** (Champagne, Cognac) immobilisait la trésorerie

### 📦 Optimisation du Stock

| Catégorie | % Stock | Rotation | Action |
|:----------|:--------|:---------|:-------|
| Vin | 93% | Élevée | Maintenir |
| Champagne | 4% | Très basse | **Déstockage** |
| Cognac | 3% | Nulle >12 mois | **Liquidation** |

---

## 📁 Deliverables

| Document | Description |
|:---------|:------------|
| [📊 Dashboard Power BI](./docs/Bardet_Flavien_2_Tableau_102025.pbix) | Fichier .pbix interactif |
| [📄 Rapport d'Analyse](./docs/Bardet_Flavien_1_Rapport_102025.pdf) | Méthodologie et insights |
| [📖 Dictionnaire](./docs/Bardet_Flavien_3_DictionnaireDesDonn%C3%A9es_102025.pdf) | Définitions des KPIs |
| [💡 Insights Business](./docs/Bardet_Flavien_4_Insights%20Business.pdf) | Recommandations stratégiques |

---

<div align="center">

**[← Retour au Portfolio](../README.md)**

</div>
