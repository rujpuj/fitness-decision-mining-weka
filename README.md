# Fitness Decision Mining Using WEKA

WEKA-based data mining project using fitness and public-health indicators to classify country-level decision priorities.

## Overview

This project applies data mining techniques to a country-level fitness dataset containing gym membership, participation, revenue, urbanization, obesity, GDP, and physical inactivity indicators.

Instead of only predicting a numeric value, the project converts the dataset into a decision-making problem. Each country-year record is classified into a practical decision priority that can support fitness-market and public-health planning.

## Decision Categories

The target variable, `decision_priority`, is an engineered decision label created from domain-based rules:

- `Health_Risk_Intervention`: high obesity and high physical inactivity.
- `Affordable_Access_Action`: high membership cost with low participation.
- `Capacity_Expansion`: strong membership growth with low gym penetration.
- `Premium_Retention`: strong participation and high gym penetration.
- `Balanced_Maintenance`: no urgent dominant action signal.

## Tools And Techniques

- WEKA Explorer
- J48 Decision Tree
- RandomForest
- 10-fold cross-validation
- Confusion matrix analysis
- Feature engineering
- ARFF dataset preparation
- Python preprocessing

## Dataset Features

Original features include:

- Country
- Year
- Region
- Gym memberships
- Fitness participation rate
- Total health club revenue
- Number of gyms
- Gym penetration rate
- Urban population percentage
- Obesity rate
- GDP per capita
- Population
- Average membership cost
- Insufficient physical activity percentage

Engineered features include:

- `membership_growth_pct`
- `participation_change`
- `inactivity_change`
- `members_per_gym`
- `revenue_per_member`
- `decision_priority`

## WEKA Model Results

The project uses J48 as the main interpretable model and RandomForest as a performance benchmark.

| Model | Evaluation | Accuracy |
| --- | --- | --- |
| J48 Decision Tree | 10-fold cross-validation | 99.4388% |
| RandomForest | 10-fold cross-validation | 99.6352% |

J48 is preferred for explanation because it produces readable decision rules. RandomForest is used to compare model performance.

## Key Insight

High gym availability does not always mean a healthier population. In the dataset, insufficient physical activity is strongly related to obesity, urbanization, and demand pressure. This shows that fitness planning should consider public-health behavior and affordability, not only gym count.

## Project Structure

```text
fitness-decision-mining-weka/
├── README.md
├── LICENSE
├── requirements.txt
├── prepare_weka_fitness.py
└── weka_fitness_decision_mining/
    ├── WEKA_Fitness_Decision_Mining_Report.md
    ├── insights_summary.txt
    ├── run_weka_models.ps1
    ├── weka_decision_mining_dataset.arff
    └── weka_decision_mining_dataset.csv
```

## How To Run

1. Install Python dependencies:

```bash
pip install -r requirements.txt
```

2. Generate the WEKA-ready files:

```bash
python prepare_weka_fitness.py
```

3. Open WEKA Explorer.

4. Load:

```text
weka_fitness_decision_mining/weka_decision_mining_dataset.arff
```

5. Go to the `Classify` tab.

6. Select:

```text
trees > J48
```

7. Use 10-fold cross-validation and set the class attribute to:

```text
decision_priority
```

8. Click `Start`.

## WEKA Command Line

```powershell
.\weka_fitness_decision_mining\run_weka_models.ps1
```

## Notes

The `decision_priority` class is not an original column in the raw dataset. It is engineered from business and public-health logic to convert the dataset into a decision mining task.

## Repository

Project repository:

https://github.com/rujpuj/fitness-decision-mining-weka

## License

This project is licensed under the MIT License.
