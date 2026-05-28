# Fitness Decision Mining Using WEKA

## Project Aim

This project uses WEKA to classify country-level fitness and public-health records into decision priorities. The goal is to move beyond simple prediction and create a practical decision-mining model.

## Dataset Summary

- Records: 3,564
- Countries: 132
- Years: 2000-2026
- Attributes used in WEKA: 15
- Target class: `decision_priority`

## Decision Classes

- `Health_Risk_Intervention`: high inactivity and high obesity.
- `Affordable_Access_Action`: high cost with below-median participation.
- `Capacity_Expansion`: strong membership growth but low gym penetration.
- `Premium_Retention`: strong participation and strong gym penetration.
- `Balanced_Maintenance`: stable condition with no urgent dominant signal.

## Methods Used

- Data preprocessing
- Feature engineering
- ARFF conversion
- J48 Decision Tree
- RandomForest
- 10-fold cross-validation
- Confusion matrix interpretation

## WEKA Results

| Model | Evaluation Method | Accuracy |
| --- | --- | --- |
| J48 Decision Tree | 10-fold cross-validation | 99.4388% |
| RandomForest | 10-fold cross-validation | 99.6352% |

J48 is the best model for explanation because it generates readable rules. RandomForest is useful as a benchmark model.

## Important J48 Rule Patterns

- High participation and high gym penetration usually indicate `Premium_Retention`.
- High membership growth with low gym penetration indicates `Capacity_Expansion`.
- High obesity and high insufficient physical activity indicate `Health_Risk_Intervention`.
- High cost with low participation indicates `Affordable_Access_Action`.

## Main Insight

Gym availability alone does not guarantee better public-health outcomes. Some regions can have high gym penetration but still show high inactivity. This means decision makers should consider affordability, behavior, urban lifestyle, and health-risk indicators together.

## Conclusion

This project demonstrates how data mining can support practical decision-making. WEKA was used not only to build models, but also to convert raw fitness and health indicators into action-oriented country-level decisions.
