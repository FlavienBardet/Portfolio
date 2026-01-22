<div align="center">

# 📈 Sanitoral PMO | Automatisation du Reporting Projet

> *"4 heures par semaine. C'est ce que chaque manager perdait à compiler des tableaux Excel."*

![Power BI](https://img.shields.io/badge/-Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![PMO](https://img.shields.io/badge/-Project_Management-0078D4?style=for-the-badge)
![Automation](https://img.shields.io/badge/-Automation-10B981?style=for-the-badge)

</div>

---

## 🎯 The Hook

**Sanitoral**, entreprise du secteur médical, gérait ses projets via un **patchwork de fichiers Excel**. Résultat : reporting manuel chronophage et vision fragmentée. Mon dashboard Power BI a **automatisé 100% du suivi** et libéré **4h/semaine/manager**.

> 💡 **Killer Fact** : Automatisation totale du reporting (**Gain: 4h/semaine/manager**)

---

## 💼 The Challenge (Business Problem)

> Comment passer d'un pilotage manuel et réactif à une gouvernance data-driven en temps réel ?

La situation initiale :
- **12 chefs de projet** avec chacun son format Excel
- **Consolidation hebdomadaire** de 3-4 heures par le PMO
- **Données obsolètes** dès la publication du rapport
- **Aucune alerte** sur les dérives de planning

---

## 🛠️ The Solution (Technical Hard Skills)

```
📦 Stack Technique
├── Power BI Desktop
│   ├── Power Query (ETL automatisé)
│   ├── DAX (Mesures avancées)
│   └── Visualisations interactives
├── Architecture Dashboard
│   ├── Vue Executive (KPIs globaux)
│   ├── Vue Manager (Portefeuille)
│   └── Vue Opérationnelle (Tâches)
└── Alertes automatiques (seuils)
```

### Mesures DAX Clés

```dax
// Taux d'avancement pondéré
Avancement_Global = 
SUMX(Projets, [Budget] * [Avancement]) / SUM(Projets[Budget])

// Projets à risque (retard > 10%)
Projets_Risque = 
CALCULATE(
    COUNT(Projets[ID]),
    Projets[Ecart_Planning] > 0.1
)
```

---

## 💡 Insights & Impact

### ⏱️ Le ROI du Temps

> *"Automatiser le reporting, c'est offrir du temps pour l'analyse."*

| Métrique | Avant | Après | Gain |
|:---------|:------|:------|:-----|
| Temps consolidation | 4h/sem | 0h | **-100%** |
| Fraîcheur données | J+3 | Temps réel | **-72h** |
| Alertes dérives | Manuelles | Automatiques | **+∞** |
| Satisfaction managers | 2.1/5 | 4.6/5 | **+119%** |

### 🔍 L'Angle Comportemental : La Résistance au Changement

> **"Les outils ne changent pas les comportements. Les habitudes, oui."**

Le déploiement a révélé un insight clé :

- Les managers **s'accrochaient à leurs Excel** par confort
- La **peur de perdre le contrôle** freinait l'adoption
- Solution : co-construction des vues avec les utilisateurs finaux

---

## 📁 Deliverables

| Document | Description |
|:---------|:------------|
| [📊 Dashboard Power BI](./docs/Projet7_Bardet_Flavien_062025.pbix) | Fichier .pbix complet |

---

<div align="center">

**[← Retour au Portfolio](../README.md)**

</div>
