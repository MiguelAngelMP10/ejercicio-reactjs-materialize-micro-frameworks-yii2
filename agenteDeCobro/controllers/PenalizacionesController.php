<?php

namespace micro\controllers;

use yii\rest\ActiveController;


class PenalizacionesController extends ActiveController
{
    public $modelClass = 'micro\models\Penalizaciones';

    public function behaviors()
    {
        $behaviors = parent::behaviors();
        unset($behaviors['rateLimiter']);
        return $behaviors;
    }
}
