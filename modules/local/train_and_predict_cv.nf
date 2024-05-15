

process TRAIN_AND_PREDICT_CV {
    input:
    val model_name
    path hyperparameters
    path cv_data
    val response_transformation

    output:
    path "prediction_dataset.pkl"    , emit: pred_data

    script:
    """
    train_and_predict_cv.py \\
        --model_name $model_name \\
        --hyperparameters $hyperparameters \\
        --cv_data $cv_data \\
        --response_transformation $response_transformation
    """

}
