<div align="center">

# 🔍 Bottleneck | Data Quality & Détection d'Anomalies

> *"111 produits fantômes. Invisibles dans l'ERP. Très visibles dans la marge."*

![Python](https://img.shields.io/badge/-Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Pandas](https://img.shields.io/badge/-Pandas-150458?style=for-the-badge&logo=pandas&logoColor=white)
![Data Quality](https://img.shields.io/badge/-Data_Quality-DC3545?style=for-the-badge)

</div>

---

## 🎯 The Hook

**Bottleneck** est né d'un constat alarmant : les **données de stock** d'une boutique e-commerce étaient truffées d'incohérences. Mon audit Python a révélé **111 produits "orphelins"** qui faussaient l'intégralité du reporting financier.

> 💡 **Killer Fact** : Identification de **111 produits "orphelins"** faussant le CA

---

## 💼 The Challenge (Business Problem)

> Comment garantir la fiabilité des KPIs financiers quand la donnée source est corrompue ?

Les symptômes détectés :
- **Écarts inexpliqués** entre stock physique et digital
- **Marges aberrantes** (négatives ou >200%)
- **Produits actifs** sans aucune transaction depuis 18 mois

---

## 🛠️ The Solution (Technical Hard Skills)

```
📦 Stack Technique
├── Python 3.x
│   ├── Pandas (Data Wrangling)
│   ├── NumPy (Calculs statistiques)
│   └── Matplotlib (Visualisations)
├── Techniques d'audit
│   ├── Z-Score (Détection outliers)
│   ├── Réconciliation cross-source
│   └── Profilage de données
└── Jupyter Notebook (Documentation)
```

### Pipeline de Nettoyage

```python
# Détection des produits orphelins
orphans = df[
    (df['last_sale_date'].isna()) | 
    (df['last_sale_date'] < cutoff_date)
]

# Identification des marges aberrantes via Z-Score
df['margin_zscore'] = stats.zscore(df['margin_rate'])
anomalies = df[abs(df['margin_zscore']) > 3]
```

---

## 💡 Insights & Impact

### 🚨 Les 111 Fantômes

> *"Ces produits n'existaient nulle part... sauf dans le calcul du CA prévisionnel."*

L'audit a révélé trois catégories d'anomalies :

| Type | Quantité | Impact CA |
|:-----|:---------|:----------|
| Produits orphelins | 111 | +8.2% de surestimation |
| Marges négatives | 23 | Perte de 12K€ |
| Doublons | 47 | Stocks virtuels gonflés |

### 🔍 L'Angle Comportemental : Le Biais de Confirmation

> **"Quand les chiffres confirment ce qu'on veut croire, on arrête de vérifier."**

Mon analyse a mis en lumière un pattern humain classique :
- Les équipes **ignoraient les alertes** car les totaux "semblaient corrects"
- Le **reporting automatisé** masquait les incohérences ligne par ligne
- La **pression commerciale** décourageait les remontées d'anomalies

---

## 📁 Deliverables

| Document | Description |
|:---------|:------------|
| [🐍 Notebook Python](./scripts/Bardet_Flavien_P6_Notebook_010525.ipynb) | Code d'audit complet |
| [📊 Présentation](./docs/Bardet_Flavien_P6_Pr%C3%A9sentationPPT_010525.pptx) | Slides exécutives |
| [📄 Rapport Business](./docs/Bardet_Flavien_P6_RapportAnalyseBusiness_010525.pdf) | Impacts financiers |
| [📄 Rapport Technique](./docs/Bardet_Flavien_P6_RapportAnalyseTechnique_010525.pdf) | Méthodologie détaillée |
| [📄 Rapport Anomalies](./docs/Bardet_Flavien_P6_RapportAnomaliesDonn%C3%A9es_010525.pdf) | Liste exhaustive |
| [📁 Table Finale](./assets/Bardet_Flavien_P6_TableFinale_010525.xlsx) | Dataset nettoyé |

---

<div align="center">

**[← Retour au Portfolio](../README.md)**

</div>
