<?php

namespace micro\controllers;

use yii\rest\ActiveController;


class TransaccionesController extends ActiveController
{
    public $modelClass = 'micro\models\Transacciones';

    public function behaviors()
    {
        $behaviors = parent::behaviors();
        unset($behaviors['rateLimiter']);
        return $behaviors;
    }
}
