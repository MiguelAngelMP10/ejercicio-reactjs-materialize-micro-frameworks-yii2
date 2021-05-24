<?php

namespace micro\controllers;

use yii\rest\ActiveController;


class PasarelasController extends ActiveController
{
    public $modelClass = 'micro\models\Pasarelas';

    public function behaviors()
    {
        $behaviors = parent::behaviors();
        unset($behaviors['rateLimiter']);
        return $behaviors;
    }
}
