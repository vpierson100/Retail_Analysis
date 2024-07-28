# Retail Data Multi-Class Classification

This repository contains the implementation of a multi-class classification model for retail data using various machine learning algorithms. The project involves data preprocessing, feature engineering, model training, hyperparameter tuning, and evaluation. The main objective is to classify customer segments based on their purchase behavior and other attributes.

## Table of Contents
- [Installation](#installation)
- [Data Preprocessing](#data-preprocessing)
- [Model Training and Evaluation](#model-training-and-evaluation)
  - [Random Forest](#random-forest)
  - [Decision Tree](#decision-tree)
  - [XGBoost](#xgboost)
  - [Neural Network](#neural-network)
- [Results](#results)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Installation

To run the code in this repository, it is needed to have Python installed along with the following libraries:

- numpy
- pandas
- scikit-learn
- xgboost
- matplotlib
- seaborn
- torch (for neural network model)
- joblib

Install the required libraries using pip:

```sh
pip install numpy pandas scikit-learn xgboost matplotlib seaborn torch joblib
```

## Data Preprocessing

The data preprocessing steps include handling missing values, feature scaling, label encoding, and one-hot encoding for categorical features. The preprocessing script performs the following steps:

1. **Fill Missing Values**:
   - Various strategies are used to fill missing values, such as using the mode, mean, or specific values like 'Unknown'.
   
2. **Standardize Numerical Features**:
   - StandardScaler is used to scale numerical features to have zero mean and unit variance.

3. **Encode Categorical Features**:
   - LabelEncoder is used for ordinal encoding of categorical variables.
   - One-hot encoding is applied to the 'products' column and other categorical features.

4. **Feature Engineering**:
   - Interaction between Age and Total_Amount.
   - Aggregated features like mean, sum, and count of purchases and amount by Customer_ID.
   - Customer Lifetime Value (CLV) calculation.
   - Segmentation based on Total_Amount and CLV.

## Model Training and Evaluation

### Random Forest

The Random Forest model is trained using GridSearchCV for hyperparameter tuning. The best parameters are used to train the final model, and feature importance is evaluated. The model is trained using k-fold cross-validation, and evaluation metrics like precision, recall, F1 score, and accuracy are calculated.

### Decision Tree

The Decision Tree model follows a similar process as the Random Forest, with hyperparameter tuning using GridSearchCV, k-fold cross-validation, and evaluation metrics calculation. A confusion matrix is also plotted to analyze the performance.

### XGBoost

The XGBoost model is trained with hyperparameter tuning using GridSearchCV. The best parameters are used to train the final model on the entire training data. The model is evaluated using k-fold cross-validation and on the test data.

### Neural Network

A neural network model is implemented using PyTorch. The model is trained and evaluated using DataLoader for batch processing. Training and validation loss, precision, recall, F1 score, and accuracy are calculated for each epoch.

## Results

The performance of each model is summarized with average precision, recall, F1 score, and accuracy. The best performing model can be selected based on these metrics.

### Neural Network

- **Test Loss:** 0.7220
- **Test Precision:** 0.6546
- **Test Recall:** 0.6241
- **Test F1 Score:** 0.6011
- **Test Accuracy:** 0.6241

### XGBoost

- **Test Precision:** 0.68
- **Test Recall:** 0.66
- **Test F1 Score:** 0.64
- **Test Accuracy:** 0.66

### Decision Tree

- **Average Precision:** 0.74
- **Average Recall:** 0.74
- **Average F1 Score:** 0.74
- **Average Accuracy:** 0.74
- **Test Precision:** 0.79
- **Test Recall:** 0.79
- **Test F1 Score:** 0.79
- **Test Accuracy:** 0.79

### Random Forest
- **Average Precision Random Forest:** 0.69
- **Average Recall Random Forest:** 0.68
- **Average F1 Score Random Forest:** 0.67
- **Average Accuracy Random Forest:** 0.68
- **Test Precision Random Forest:** 0.70
- **Test Recall Random Forest:** 0.69
- **Test F1 Score Random Forest:** 0.67
- **Test Accuracy Random Forest:** 0.69

The Decision Tree results show consistent training metrics (precision, recall, F1 score, and accuracy) of 0.74, but higher testing metrics of 0.79. This discrepancy suggests the model might be overfitting the training data or there may be an issue with the cross-validation process. That's why we can say that, `Random Forest` shows the best result for the application. The model shows consistency and it is not overfitted and underfitted. It shows better generalization than other model. 

## Usage

To use the code in this repository:

1. Clone the repository:

```sh
git clone https://github.com/jesseg102/Retail_Analysis/edit/main/Model_building/ads_model_building.ipynb 
```

2. Navigate to the project directory:

```sh
cd retail-data-classification
```

3. Evaluate a saved model:

```python
import joblib
from sklearn.metrics import precision_score, recall_score, f1_score, accuracy_score

# Load the saved model
model = joblib.load('path/to/saved/model.pkl')

# Make predictions and evaluate
y_test_pred = model.predict(X_test)
test_precision = precision_score(y_test, y_test_pred, average='weighted')
test_recall = recall_score(y_test, y_test_pred, average='weighted')
test_f1 = f1_score(y_test, y_test_pred, average='weighted')
test_accuracy = accuracy_score(y_test, y_test_pred)

print(f'Test Precision: {test_precision:.2f}')
print(f'Test Recall: {test_recall:.2f}')
print(f'Test F1 Score: {test_f1:.2f}')
print(f'Test Accuracy: {test_accuracy:.2f}')
```

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

Feel free to customize the README.md file according to project's specific details and requirements.
