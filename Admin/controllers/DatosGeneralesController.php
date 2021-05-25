<?php

namespace micro\controllers;

use yii\rest\ActiveController;


class DatosGeneralesController extends ActiveController
{
    public $modelClass = 'micro\models\DatosGenerales';

    public function behaviors()
    {
        $behaviors = parent::behaviors();
        unset($behaviors['rateLimiter']);
        return $behaviors;
    }
}
