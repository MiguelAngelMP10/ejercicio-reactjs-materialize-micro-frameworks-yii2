<?php

namespace micro\controllers;

use yii\rest\ActiveController;


class SuscripcionesController extends ActiveController
{
    public $modelClass = 'micro\models\Suscripciones';

    public function behaviors()
    {
        $behaviors = parent::behaviors();
        unset($behaviors['rateLimiter']);
        return $behaviors;
    }
}
