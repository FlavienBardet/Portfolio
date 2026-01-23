<div align="center">

# 🏠 Valuation ML | Machine Learning pour l'Estimation Immobilière

> *"+38% de potentiel caché. C'est ce que le modèle a détecté là où l'expert voyait un marché stable."*

![Python](https://img.shields.io/badge/-Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Scikit-Learn](https://img.shields.io/badge/-Scikit_Learn-F7931E?style=for-the-badge&logo=scikit-learn&logoColor=white)
![ML](https://img.shields.io/badge/-Machine_Learning-8B5CF6?style=for-the-badge)

</div>

---

## 🎯 The Hook

**Valuation** applique le Machine Learning à l'**arbitrage d'actifs immobiliers**. Mon modèle prédictif a identifié un **potentiel de valorisation de +38%** sur le segment Corporate, invisible aux méthodes d'estimation traditionnelles.

> 💡 **Killer Fact** : Détection d'un potentiel de valorisation cachée de **+38%**

---

## 💼 The Challenge (Business Problem)

> Comment optimiser un portefeuille immobilier en identifiant les actifs sous-valorisés avant le marché ?

Le contexte :
- **Portefeuille de 150+ actifs** à réévaluer
- **Méthodes traditionnelles** (comparables) limitées par le manque de transactions
- **Décisions d'arbitrage** basées sur l'intuition plutôt que la donnée

---

## 🛠️ The Solution (Technical Hard Skills)

```
📦 Stack Technique
├── Python 3.x
│   ├── Pandas (Feature Engineering)
│   ├── Scikit-Learn (Modélisation)
│   ├── NumPy (Calculs matriciels)
│   └── Matplotlib/Seaborn (Viz)
├── Algorithmes testés
│   ├── Linear Regression
│   ├── Random Forest
│   ├── Gradient Boosting
│   └── XGBoost
└── Pipeline ML complet
```

### Pipeline de Modélisation

```python
from sklearn.pipeline import Pipeline
from sklearn.preprocessing import StandardScaler
from sklearn.ensemble import GradientBoostingRegressor

pipeline = Pipeline([
    ('scaler', StandardScaler()),
    ('model', GradientBoostingRegressor(
        n_estimators=200,
        max_depth=5,
        learning_rate=0.1
    ))
])

# Feature Importance Analysis
features_impact = pd.DataFrame({
    'feature': X.columns,
    'importance': model.feature_importances_
}).sort_values('importance', ascending=False)
```

---

## 💡 Insights & Impact

### 📈 Le Segment Corporate : La Pépite Cachée

> *"Le marché sous-estimait systématiquement les actifs tertiaires en zone périurbaine."*

L'analyse a révélé :

| Segment | Estimation Marché | Estimation ML | Écart |
|:--------|:------------------|:--------------|:------|
| Résidentiel Centre | 4 200€/m² | 4 150€/m² | -1.2% |
| Résidentiel Péri | 2 800€/m² | 2 950€/m² | +5.4% |
| **Corporate Péri** | **1 900€/m²** | **2 620€/m²** | **+37.9%** |
| Commercial | 3 100€/m² | 3 250€/m² | +4.8% |

### 🔍 L'Angle Comportemental : L'Ancrage Cognitif

> **"Les experts immobiliers étaient 'ancrés' sur des références obsolètes."**

Mon background en psychologie a permis d'identifier :

- Le **biais d'ancrage** sur les dernières transactions (même anciennes)
- L'**aversion au risque** freinant les valorisations optimistes
- La **pensée de groupe** uniformisant les estimations du marché

Le modèle ML, lui, n'a pas de mémoire émotionnelle. Il voit les **patterns objectifs**.

---

## 📁 Deliverables

| Document | Description |
|:---------|:------------|
| [🐍 Notebook ML](./scripts/Bardet_Flavien_Notebook_072025.ipynb) | Pipeline complet commenté |
| [📊 Présentation](./docs/Bardet_Flavien_Pr%C3%A9sentation_072025.pdf) | Résultats et recommandations |

---

<div align="center">

**[← Retour au Portfolio](../README.md)**

</div>
