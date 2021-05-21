<?php

namespace micro\controllers;

use yii\rest\ActiveController;


class ConceptosController extends ActiveController
{
    public $modelClass = 'micro\models\Conceptos';

    public function behaviors()
    {
        $behaviors = parent::behaviors();
        unset($behaviors['rateLimiter']);
        return $behaviors;
    }
}
