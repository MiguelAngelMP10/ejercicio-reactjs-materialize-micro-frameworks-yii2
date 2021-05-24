<?php

namespace micro\controllers;

use yii\rest\ActiveController;


class ConceptosPlanesController extends ActiveController
{
    public $modelClass = 'micro\models\ConceptosPlanes';

    public function behaviors()
    {
        $behaviors = parent::behaviors();
        unset($behaviors['rateLimiter']);
        return $behaviors;
    }
}
